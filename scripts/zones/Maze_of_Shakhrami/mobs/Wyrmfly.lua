-----------------------------------
-- Area: Maze Of Shakhrami
--  MOB: Wyrmfly
-- Involved in Eco Warrior (Windurst)
-----------------------------------
local ID = require("scripts/zones/Maze_of_Shakhrami/IDs");
require("scripts/globals/quests");
require("scripts/globals/status");
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getQuestStatus(WINDURST,ECO_WARRIOR_WIN) ~= QUEST_AVAILABLE and player:getVar("ECO_WARRIOR_ACTIVE") == 238 and player:hasStatusEffect(dsp.effect.LEVEL_RESTRICTION)) then
        local allFliesDead = true;
        for i = ID.mob.WYRMFLY_OFFSET, ID.mob.WYRMFLY_OFFSET + 2 do
            if (i ~= mob:getID() and GetMobByID(i):isAlive()) then
                allFliesDead = false;
            end
        end
        if (allFliesDead) then
            player:setVar("ECOR_WAR_WIN-NMs_killed",1);
        end
    end
end;