require "/scripts/status.lua"
require "/scripts/util.lua"
require "/scripts/interp.lua"
local catUpdate = update

function update(dt)
    if world.entitySpecies(entity.id()) == "cat" then
        status.setStatusProperty("mouthPosition", {0.0, -0.40})
		status.addPersistentEffects("CatPersistantEffects",{"catreducedfalldamage"});
    end
    catUpdate(dt)
end
