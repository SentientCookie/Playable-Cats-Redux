require "/scripts/status.lua"
require "/scripts/util.lua"
require "/scripts/interp.lua"
local catUpdate = update

function update(dt)
    if world.entitySpecies(entity.id()) == "cat" then
		status.setStatusProperty("mouthPosition", {0.0, -8.0})
       	status.addPersistentEffects("CatPersistantEffects",{{stat = "fallDamageMultiplier", effectiveMultiplier = 0.70}})
    end
    catUpdate(dt)
end
