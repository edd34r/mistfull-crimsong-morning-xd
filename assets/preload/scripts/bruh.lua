function onCreate() --para poner el gameover separado ok
	if boyfriendName == 'bf' then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dead');
	end
end