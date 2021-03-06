-----------------------------------
-- Area: Balga's Dais
-- MOB: Opo-opo Monarch
-- BCNM Fight: Royal Succession
-----------------------------------
require("scripts/globals/status");

function onMobFight (mob,target)
    local partner = (mob:getID() + 1);
    if (GetMobByID(partner):isDead() and mob:getLocalVar("buffed") == 0) then
        mob:setLocalVar("buffed", 1);
        mob:addHP(mob:getMaxHP()/2);
        mob:addMod(dsp.mod.ATT, 500);
        if(math.random(2)==2) then
            mob:addMod(dsp.mod.UDMGPHYS, -100);
            mob:addMod(dsp.mod.UDMGRANGE, -100);
        else
            mob:setMod(dsp.mod.UDMGMAGIC, -100);
        end
    end
end;

function onMobDeath(mob, player, isKiller)
end;
