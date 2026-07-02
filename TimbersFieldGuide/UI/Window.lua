local _, TFG = ...

local UI = TFG.UI

local frame = CreateFrame("Frame", "TFG_MainFrame", UIParent, "BackdropTemplate")
TFG.frame = frame

frame:SetSize(UI.FRAME_WIDTH, UI.FRAME_HEIGHT)
frame:SetFrameStrata("FULLSCREEN_DIALOG")
frame:SetBackdrop({
    bgFile = "Interface/AddOns/TimbersFieldGuide/Media/Background.tga",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    edgeSize = 32,
    insets   = {
        left = 11,
        right = 12,
        top = 12,
        bottom = 11,
    },
})
frame:SetBackdropColor(1,1,1,1)
TFG.SetBackground(TFG.selectedFile:lower())

local CLAMP_MARGIN = 40

local function ensureWindowDB()
    TimbersFieldGuideDB = TimbersFieldGuideDB or {}
    TimbersFieldGuideDB.window = TimbersFieldGuideDB.window or {}
end

function frame:ClampToScreen()
    if not UIParent then return end
    local centerX, centerY = self:GetCenter()
    if not centerX or not centerY then return end

    local uiW, uiH = UIParent:GetWidth(), UIParent:GetHeight()
    if not uiW or not uiH or uiW == 0 or uiH == 0 then return end

    local width, height = self:GetWidth(), self:GetHeight()
    local minX = CLAMP_MARGIN - (width / 2)
    local maxX = uiW - CLAMP_MARGIN + (width / 2)
    local minY = CLAMP_MARGIN - (height / 2)
    local maxY = uiH - CLAMP_MARGIN + (height / 2)

    local clampedX = math.min(math.max(centerX, minX), maxX)
    local clampedY = math.min(math.max(centerY, minY), maxY)

    if clampedX ~= centerX or clampedY ~= centerY then
        self:ClearAllPoints()
        self:SetPoint("CENTER", UIParent, "BOTTOMLEFT", clampedX, clampedY)
    end
end

function frame:SavePosition()
    ensureWindowDB()
    local point, _, relativePoint, xOfs, yOfs = self:GetPoint(1)
    if point and relativePoint and xOfs and yOfs then
        TimbersFieldGuideDB.window.point = point
        TimbersFieldGuideDB.window.relativePoint = relativePoint
        TimbersFieldGuideDB.window.x = xOfs
        TimbersFieldGuideDB.window.y = yOfs
    end
end

function frame:ApplySavedPosition()
    ensureWindowDB()
    local w = TimbersFieldGuideDB.window
    self:ClearAllPoints()
    if w.point and w.relativePoint and w.x and w.y then
        self:SetPoint(w.point, UIParent, w.relativePoint, w.x, w.y)
    else
        self:SetPoint("CENTER")
    end
    self:ClampToScreen()
end

function frame:ResetPosition()
    ensureWindowDB()
    TimbersFieldGuideDB.window.point = nil
    TimbersFieldGuideDB.window.relativePoint = nil
    TimbersFieldGuideDB.window.x = nil
    TimbersFieldGuideDB.window.y = nil
    self:ClearAllPoints()
    self:SetPoint("CENTER")
    self:ClampToScreen()
    self:SavePosition()
end

frame:ApplySavedPosition()
frame:Hide()

frame:EnableMouse(true)
frame:SetMovable(true)
frame:SetResizable(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", function(self)
    self:StartMoving()
end)
frame:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
    self:ClampToScreen()
    self:SavePosition()
end)
frame:HookScript("OnShow", function(self)
    self:ClampToScreen()
end)

-- Allow ESC to close the addon window
tinsert(UISpecialFrames, "TFG_MainFrame")

-- Close the profession popup when the main frame is hidden
frame:SetScript("OnHide", function()
    if TFG.closeProfessionPopup then
        TFG.closeProfessionPopup()
    end
end)
