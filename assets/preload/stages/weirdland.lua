-- Middlescroll Shit
function onCreatePost()
	setProperty('boyfriendGroup.visible', false);
	setProperty('gfGroup.visible', false);
	
	noteTweenX('byearrows1', 0, -200, 0.01, 'linear')
        noteTweenX('byearrows2', 1, -200, 0.01, 'linear')
        noteTweenX('byearrows3', 2, -200, 0.01, 'linear')
        noteTweenX('byearrows4', 3, -200, 0.01, 'linear')
	noteTweenX('middletime1', 4, 414, 0.01, 'linear')
        noteTweenX('middletime2', 5, 527, 0.01, 'linear')
        noteTweenX('middletime3', 6, 637, 0.01, 'linear')
        noteTweenX('middletime4', 7, 750, 0.01, 'linear')
end

-- Camera Stuff
function onUpdate()
	if mustHitSection then
		triggerEvent('Camera Follow Pos', '280', '440')
	else
		triggerEvent('Camera Follow Pos', '280', '440')
	end
end

-- Stage Stuff
function onCreate()
	makeAnimatedLuaSprite('bg','background/weirdland/static', -340, 50)
	addAnimationByPrefix('bg','doors', 'doors', 24, true)
	scaleLuaSprite('bg', 2, 2);
	addLuaSprite('bg', false);
	
	makeLuaSprite('doorway', 'background/weirdland/doorway', -330, 20)
	scaleLuaSprite('doorway', 0.6, 0.6);
	addLuaSprite('doorway', false)
	
		-- Nick Logo
		makeLuaSprite('nick', 'background/weirdland/logo', 1000, 600);
		addLuaSprite('nick', false);
		setObjectCamera('nick', 'hud');
		scaleLuaSprite('nick', 0.3, 0.3);
end