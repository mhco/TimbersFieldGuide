local _, TFG = ...

-- Minimap button via LibDataBroker + LibDBIcon
--
-- SavedVariables:
--   TimbersFieldGuideDB.minimap = { hide = false }
--   Additional keys (like "minimapPos") are managed by LibDBIcon.

local function ensureDB()
    TimbersFieldGuideDB = TimbersFieldGuideDB or {}
    TimbersFieldGuideDB.minimap = TimbersFieldGuideDB.minimap or {}
    if TimbersFieldGuideDB.minimap.hide == nil then
        TimbersFieldGuideDB.minimap.hide = false
    end
end

local function toggleMainWindow()
    if not TFG.frame then return end

    if TFG.frame:IsShown() then
        TFG.frame:SetShown(false)
    else
        if TFG.frame.Relayout then
            TFG.frame:Relayout()
        end
        TFG.frame:SetShown(true)
    end
end

local function showMinimapButton()
    ensureDB()

    local icon = LibStub and LibStub("LibDBIcon-1.0", true)
    if icon then
        TimbersFieldGuideDB.minimap.hide = false
        icon:Show("TimbersFieldGuide")
    end
end

local function hideMinimapButton()
    ensureDB()

    local icon = LibStub and LibStub("LibDBIcon-1.0", true)
    if icon then
        TimbersFieldGuideDB.minimap.hide = true
        icon:Hide("TimbersFieldGuide")
    end
end

local function toggleMinimapButton()
    ensureDB()
    if TimbersFieldGuideDB.minimap.hide then
        showMinimapButton()
    else
        hideMinimapButton()
    end
end

local function openMinimapMenu(anchorFrame)
    ensureDB()

    if not TFG._minimapDropdown then
        TFG._minimapDropdown = CreateFrame("Frame", "TFG_MinimapDropdown", UIParent, "UIDropDownMenuTemplate")
    end

    local function initMenu(self, level)
        level = level or 1
        if level ~= 1 then return end

        local info = UIDropDownMenu_CreateInfo()
        info.text = TFG.NAME or "Timber's Field Guide"
        info.isTitle = true
        info.notCheckable = true
        UIDropDownMenu_AddButton(info, level)

        info = UIDropDownMenu_CreateInfo()
        info.text = "Hide minimap button"
        info.notCheckable = true
        info.func = function()
            hideMinimapButton()
            print((TFG.NAME or "Timber's Field Guide") .. ": minimap button hidden. To show it again, type /tfg minimap show")
            CloseDropDownMenus()
        end
        UIDropDownMenu_AddButton(info, level)

        info = UIDropDownMenu_CreateInfo()
        info.text = "Close"
        info.notCheckable = true
        info.func = function() CloseDropDownMenus() end
        UIDropDownMenu_AddButton(info, level)
    end

    UIDropDownMenu_Initialize(TFG._minimapDropdown, initMenu, "MENU")
    ToggleDropDownMenu(1, nil, TFG._minimapDropdown, "cursor", 0, 0)
end

local function createLauncher()
    local ldb = LibStub and LibStub("LibDataBroker-1.1", true)
    if not ldb then
        return nil
    end

    -- Use a simple icon path. You can swap to a custom .tga if you add one.
    local iconPath = "Interface/AddOns/TimbersFieldGuide/Media/logo"

    local launcher = ldb:NewDataObject("TimbersFieldGuide", {
        type = "launcher",
        text = TFG.NAME or "Timber's Field Guide",
        icon = iconPath,
        OnClick = function(clickedFrame, button)
            if button == "LeftButton" then
                toggleMainWindow()
            elseif button == "RightButton" then
                openMinimapMenu(clickedFrame)
            end
        end,
        OnTooltipShow = function(tooltip)
            if not tooltip then return end
            tooltip:AddLine(TFG.NAME or "Timber's Field Guide")
            if TFG.VERSION then
                tooltip:AddLine(tostring(TFG.VERSION), 0.8, 0.8, 0.8)
            end
            tooltip:AddLine(" ")
            tooltip:AddLine("Left-click: Toggle window", 1, 1, 1)
            tooltip:AddLine("Right-click: Options", 1, 1, 1)
        end,
    })

    return launcher
end

local function registerIcon()
    ensureDB()

    local icon = LibStub and LibStub("LibDBIcon-1.0", true)
    if not icon then
        return
    end

    if not TFG._ldbLauncher then
        TFG._ldbLauncher = createLauncher()
    end

    if not TFG._ldbLauncher then
        return
    end

    -- Register once. LibDBIcon will handle showing/hiding based on the db.
    if not TFG._minimapRegistered then
        icon:Register("TimbersFieldGuide", TFG._ldbLauncher, TimbersFieldGuideDB.minimap)
        TFG._minimapRegistered = true
    end

    -- Safety net: ensure right-click opens our menu even if this LibDBIcon version
    -- doesn't forward RightButton clicks to the LDB OnClick handler.
    local btn = icon.GetMinimapButton and icon:GetMinimapButton("TimbersFieldGuide")
    if btn and not btn._tfgHooked then
        btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
        btn:HookScript("OnClick", function(self, button)
            if button == "RightButton" then
                openMinimapMenu(self)
            end
        end)
        btn._tfgHooked = true
    end

    if TimbersFieldGuideDB.minimap.hide then
        icon:Hide("TimbersFieldGuide")
    else
        icon:Show("TimbersFieldGuide")
    end
end

-- Public API
TFG.Minimap = TFG.Minimap or {}

function TFG.Minimap:Init()
    registerIcon()
end

function TFG.Minimap:Show()
    showMinimapButton()
end

function TFG.Minimap:Hide()
    hideMinimapButton()
end

function TFG.Minimap:Toggle()
    toggleMinimapButton()
end

-- Slash helpers (optional)
TFG.Minimap.ShowCommand = "show"
TFG.Minimap.HideCommand = "hide"

function TFG.Minimap:HandleSlash(args)
    args = (args or "")
    args = (strtrim and strtrim(args)) or args
    args = args:lower()

    -- Accept only commands that start with "minimap".
    local head, tail = string.match(args, "^(%S+)%s*(.*)$")
    if head ~= "minimap" then
        return false
    end

    tail = tail or ""
    tail = (strtrim and strtrim(tail)) or tail

    if tail == "" then
        self:Toggle()
        if TimbersFieldGuideDB and TimbersFieldGuideDB.minimap and TimbersFieldGuideDB.minimap.hide then
            print((TFG.NAME or "Timber's Field Guide") .. ": minimap button hidden")
        else
            print((TFG.NAME or "Timber's Field Guide") .. ": minimap button shown")
        end
        return true
    end

    if tail == "show" then
        self:Show()
        print((TFG.NAME or "Timber's Field Guide") .. ": minimap button shown")
        return true
    end

    if tail == "hide" then
        self:Hide()
        print((TFG.NAME or "Timber's Field Guide") .. ": minimap button hidden")
        return true
    end

    -- Unrecognized minimap subcommand, but we still consumed "minimap".
    print((TFG.NAME or "Timber's Field Guide") .. ": usage: /tfg minimap [show|hide]")
    return true
end

-- Initialize after variables are loaded.
local ev = CreateFrame("Frame")
ev:RegisterEvent("ADDON_LOADED")
ev:SetScript("OnEvent", function(_, event, addonName)
    if event == "ADDON_LOADED" and addonName == "TimbersFieldGuide" then
        registerIcon()
    end
end)
