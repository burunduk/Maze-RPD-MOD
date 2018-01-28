local RPD = require "scripts/lib/commonClasses"

local mob = require"scripts/lib/mob"

local buffs = {
    RPD.Buffs.Weakness,
    RPD.Buffs.Roots,
    RPD.Buffs.Blindness,
    RPD.Buffs.Vertigo,
    RPD.Buffs.Slow,
    RPD.Buffs.Levitation,
    RPD.Buffs.Charm
}

return mob.init{
    attackProc = function(self, enemy, dmg)
        RPD.affectBuff(enemy, buffs[math.random(1,#buffs)])
        return dmg
    end
}