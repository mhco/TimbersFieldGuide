local ADDON_NAME, TFG = ...
TFG = TFG or {}

-- ========================================================================== 
-- Define Addon Constants
-- ==========================================================================

-- TFG.NAME    = ADDON_NAME
TFG.NAME    = C_AddOns.GetAddOnMetadata("TimbersFieldGuide", "Title")
TFG.VERSION = C_AddOns.GetAddOnMetadata("TimbersFieldGuide", "Version")

-- bindings
BINDING_HEADER_TIMBERSFIELDGUIDE = "Timber's Field Guide"
BINDING_NAME_TIMBERSFIELDGUIDE_TOGGLE = "Toggle Timber's Field Guide"
