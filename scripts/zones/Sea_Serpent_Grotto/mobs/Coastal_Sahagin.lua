-----------------------------------
-- Area: Sea Serpent Grotto
--  MOB: Coastal Sahagin
-- Note: PH for Denn the Orcavoiced
-----------------------------------
local ID = require("scripts/zones/Sea_Serpent_Grotto/IDs")
require("scripts/globals/regimes")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 806, 1, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 807, 1, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 808, 1, dsp.regime.type.GROUNDS)
end

function onMobDespawn(mob)
    phOnDespawn(mob, ID.mob.DENN_THE_ORCAVOICED_PH, 10, 7200) -- 2 hours
end
