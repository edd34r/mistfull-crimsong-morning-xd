local ofs = 15
local lockcam = true
local del = 0
local del2 = 0

function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-spongebobcage-dead');
	
	setProperty('gfGroup.visible', false)
	makeLuaSprite('showroom', 'background/propaganda/propaganda', -1200,-400)
	addLuaSprite('showroom', false)
    makeAnimatedLuaSprite("ford", "background/propaganda/Ford1", 350, 0)
    addAnimationByPrefix("ford", "Ford1", "Ford1", 24, false)
    addLuaSprite("ford", false)
	
	
	makeAnimatedLuaSprite("escena", "background/propaganda/intro1", 0, 0)
	addAnimationByPrefix("escena", "lol", "scene", 10, false)
	setObjectCamera('escena', 'other')
	setGraphicSize('escena', 1280, 720)
	setProperty('escena.visible', false)
	addLuaSprite("escena", false)
	
	makeAnimatedLuaSprite("escena2", "background/propaganda/intro2", 0, 0)
	addAnimationByPrefix("escena2", "lol2", "scene2", 11, false)
	setObjectCamera('escena2', 'other')
	setGraphicSize('escena2', 1280, 720)
	setProperty('escena2.visible', false)
	addLuaSprite("escena2", false)
	
	makeAnimatedLuaSprite("escena3", "background/propaganda/intro3", 0, 0)
	addAnimationByPrefix("escena3", "lol3", "scene3", 11, false)
	setObjectCamera('escena3', 'other')
	setGraphicSize('escena3', 1280, 720)
	setProperty('escena3.visible', false)
	addLuaSprite("escena3", false)
	
	makeAnimatedLuaSprite("escena4", "background/propaganda/final1", 0, 0)
	addAnimationByPrefix("escena4", "lol4", "scene4", 11, false)
	setObjectCamera('escena4', 'other')
	setGraphicSize('escena4', 1280, 720)
	setProperty('escena4.visible', false)
	addLuaSprite("escena4", false)
	
	makeAnimatedLuaSprite("escena5", "background/propaganda/final2", 0, 0)
	addAnimationByPrefix("escena5", "lol5", "scene5", 15, false)
	setObjectCamera('escena5', 'other')
	setGraphicSize('escena5', 1280, 720)
	setProperty('escena5.visible', false)
	addLuaSprite("escena5", false)
	
	makeLuaSprite('fondo','', 0, 0)
	makeGraphic('fondo', 1280, 720, '000000')
	setObjectCamera('fondo', 'other');
	addLuaSprite('fondo',false)
	
	makeAnimatedLuaSprite("escena6", "background/propaganda/final3", 0, 0)
	addAnimationByPrefix("escena6", "lol6", "scene6", 11, true)
	setObjectCamera('escena6', 'other')
	setGraphicSize('escena6', 1280, 720)
	setProperty('escena6.visible', false)
	addLuaSprite("escena6", false)
	
end

function onUpdate(elapsed)
    xx2 = getCharacterX('boyfriend') - 300
    yy2 = getCharacterY('boyfriend') + 300

    if lockcam == true then
        if mustHitSection == false then
            triggerEvent('Camera Follow Pos',xx2,yy2)
        else
            triggerEvent('Camera Follow Pos',xx2,yy2)
        end
    end
end

function onBeatHit()
		if curBeat % 2 == 0 then
			luaSpritePlayAnimation("ford", "Ford1")			
		end
end

function onStepHit()
if curStep == 25 then
objectPlayAnimation("escena", "lol", true)
setProperty('escena.visible', true)
setProperty('fondo.visible', false)
end
if curStep == 45 then
setProperty('escena.visible', false)
setProperty('escena2.visible', true)
objectPlayAnimation("escena2", "lol2", true)
end
if curStep == 103 then
setProperty('escena2.visible', false)
setProperty('escena3.visible', true)
objectPlayAnimation("escena3", "lol3", true)
end
if curStep == 155 then
setProperty('escena3.visible', false)
setProperty('fondo.visible', true)
end
if curStep == 184 then
setProperty('fondo.visible', false)
end
if curStep == 940 then
setProperty('escena4.visible', true)
objectPlayAnimation("escena4", "lol4", true)
end
if curStep == 964 then
setProperty('escena4.visible', false)
setProperty('escena5.visible', true)
objectPlayAnimation("escena5", "lol5", true)
end
if curStep == 994 then
setProperty('escena5.visible', false)
setProperty('escena6.visible', true)
objectPlayAnimation("escena6", "lol6", false)
end
if curStep == 1030 then
doTweenAlpha('lol', 'escena6', 0, 8, 'linear')
setProperty('fondo.visible', true)
end
end