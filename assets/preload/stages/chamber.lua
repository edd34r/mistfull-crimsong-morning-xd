-- Middlescroll Shit
function onCreatePost()

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
		triggerEvent('Camera Follow Pos', '980', '350')
		doTweenZoom('asf', 'camGame', 0.8, 1, 'cubeOut')
		setProperty('defaultCamZoom', 0.8)
	else
		triggerEvent('Camera Follow Pos', '980', '250')
		doTweenZoom('asf', 'camGame', 1, 1, 'cubeOut')
		setProperty('defaultCamZoom', 1)
	end
end

-- Stage
function onCreate()
	makeLuaSprite('inside', 'background/starved/chamber/inside', 150, -150)
	makeLuaSprite('dead', 'background/starved/chamber/dead', 400, 350)
	
	
	scaleObject('inside', 1.6, 1.6)
	scaleObject('dead', 1.4, 1.4)

	addLuaSprite('inside', false)
	addLuaSprite('dead', false)

end

function onEvent(name, value1, value2) --evento hecho en casa lal
	if name == 'Blammed Lights' then
	if value1 == '0' then 
	doTweenAlpha('hi2', 'inside', 1, 0.5, 'linear')
	doTweenAlpha('hi3', 'dead', 1, 0.5, 'linear')
	end
	if value1 == '1' then 
	doTweenAlpha('bye2', 'inside', 0, 0.5, 'linear')
	doTweenAlpha('bye3', 'dead', 0, 0.5, 'linear')
	end
end
end

