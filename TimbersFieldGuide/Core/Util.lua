local _, TFG = ...

function TFG.FormatCost(copper)
    if not copper or copper <= 0 then return nil end

    local g = math.floor(copper / 10000)
    local s = math.floor((copper % 10000) / 100)
    local c = copper % 100

    local text = ""
    if g > 0 then
        text = text .. g .. "|TInterface\\MoneyFrame\\UI-GoldIcon:12:12:0:0|t "
    end
    if s > 0 then
        text = text .. s .. "|TInterface\\MoneyFrame\\UI-SilverIcon:12:12:0:0|t "
    end
    if c > 0 then
        text = text .. c .. "|TInterface\\MoneyFrame\\UI-CopperIcon:12:12:0:0|t"
    end

    return text
end

function TFG.isAlliance()
    return UnitFactionGroup("player") == "Alliance"
end
