function noblePortrait()
    local drawables = root.npcPortrait("full", "novakid", "captainnoble", 1, 1, {})
    local name = "諾布林隊長"
    return drawables, name
end

function setBountyPortraits()
    local d, n = noblePortrait()
    for _, pType in pairs({"QuestStarted", "QuestComplete", "QuestFailed"}) do
        quest.setPortrait(pType, d)
        quest.setPortraitTitle(pType, n)
    end
end
