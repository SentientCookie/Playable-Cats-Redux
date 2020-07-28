local origInit = init

function init(...)
	if origInit then
		origInit(...)
	end

	message.setHandler("player.isLounging", player.isLounging)
	message.setHandler("player.loungingIn", player.loungingIn)
end
