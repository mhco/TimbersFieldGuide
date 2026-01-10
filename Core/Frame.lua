local _, TFG = ...

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
