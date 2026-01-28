local addonName, TFG = ...

local UI = TFG.UI

local frame = CreateFrame("Frame", "TFG_MainFrame", UIParent, "BackdropTemplate")
TFG.frame = frame

frame:SetSize(UI.FRAME_WIDTH, UI.FRAME_HEIGHT)
frame:SetPoint("CENTER")
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
setBackground(TFG.selectedFile:lower())

frame:EnableMouse(true)
frame:SetMovable(true)
frame:SetResizable(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", frame.StartMoving)
frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

-- Allow ESC to close the addon window
tinsert(UISpecialFrames, "TFG_MainFrame")

-- Close the profession popup when the main frame is hidden
frame:SetScript("OnHide", function()
    if TFG.closeProfessionPopup then
        TFG.closeProfessionPopup()
    end
end)

-- Title bar
local titleBar = CreateFrame("Frame", nil, frame, "BackdropTemplate")
frame.titleBar = titleBar

titleBar:SetHeight(UI.TITLEBAR_HEIGHT)
titleBar:SetPoint("TOPLEFT")
titleBar:SetPoint("TOPRIGHT")
titleBar:SetBackdrop({
    bgFile   = "Interface/DialogFrame/UI-DialogBox-Background-Dark",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    tile     = true,
    tileSize = 16,
    edgeSize = 16,
    insets   = { left=4, right=4, top=4, bottom=4 },
})

-- Logo
--local logo = titleBar:CreateTexture(nil, "OVERLAY")
--logo:SetSize(256, 128)
--pcall(function()
--    logo:SetTexture("Interface/AddOns/TimbersFieldGuide/Media/logo-wide-new")
--end)
--logo:SetPoint("CENTER", frame, "TOP", 0, -5)

-- Title
local title = titleBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
title:SetPoint("LEFT", 16, 0)
title:SetText(TFG.NAME .. " " .. TFG.VERSION)

-- Close
local close = CreateFrame("Button", nil, titleBar, "UIPanelCloseButton")
close:SetPoint("RIGHT", -4, 0)
close:SetScript("OnClick", function() frame:Hide() end)


-- Public toggle used by keybindings: mirrors the minimap left-click behavior.
_G.TimbersFieldGuide_Toggle = function()
    if not TFG or not TFG.frame then return end
    if TFG.frame:IsShown() then
        TFG.frame:Hide()
    else
        if TFG.frame.Relayout then
            TFG.frame:Relayout()
        end
        TFG.frame:Show()
    end
end

-- Attempt to create/register a debug tab/module for common debug addons (e.g. _DebugLog).
local function tryRegisterDebugTab()
    local names = {"_DebugLog", "DebugLog", "Debug", "Debugger", "DebugFrame"}
    local methods = {"Register", "RegisterModule", "AddModule", "AddTab", "CreateTab"}
    for _, n in ipairs(names) do
        local g = _G[n]
        if g then
            pcall(function()
                for _, m in ipairs(methods) do
                    if type(g[m]) == "function" then
                        -- Some APIs expect (moduleName) or (self, moduleName)
                        pcall(g[m], g, "TimbersFieldGuide")
                        pcall(g[m], "TimbersFieldGuide")
                    end
                end
                -- Some debug globals are simple functions that accept a registration call.
                if type(g.Register) ~= "function" and type(g) == "function" then pcall(g, "TimbersFieldGuide") end
            end)
            return true
        end
    end
    return false
end

-- Try immediate registration (in case debug addon already loaded), and also on ADDON_LOADED.
pcall(tryRegisterDebugTab)
local evt = CreateFrame("Frame")
evt:RegisterEvent("ADDON_LOADED")
evt:SetScript("OnEvent", function(self, event, name)
    if event == "ADDON_LOADED" and name == addonName then
        pcall(tryRegisterDebugTab)
    end
end)
-- If DebugWindow is present, show it so users can see debug output immediately.
evt:RegisterEvent("PLAYER_LOGIN")
evt:SetScript("OnEvent", function(self, event, name)
    if event == "PLAYER_LOGIN" then
        if _G.DebugWindow and type(_G.DebugWindow.Show) == "function" then
            pcall(function() _G.DebugWindow:Show() end)
        end
    end
end)
