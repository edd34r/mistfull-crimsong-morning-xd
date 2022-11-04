function onCreate()
	-- background shit
	makeLuaSprite('room', 'background/bedroom/room', -700,-400);
	scaleLuaSprite('room', 2, 2);
	addLuaSprite('room', false);

	makeLuaSprite('suicide', 'background/bedroom/suicide', -700,-400);
	scaleLuaSprite('suicide', 2, 2);
	addLuaSprite('suicide', false);
	setProperty('suicide.visible', false);	
	
	-- stage
	makeLuaSprite('curtianbig', 'background/bedroom/doomsdayfb/curtianbig', -890, -450)
	addLuaSprite('curtianbig', false)
	setLuaSpriteScrollFactor('curtianbig', 1, 1)
	scaleObject('curtianbig', 2, 2.2)
	setProperty('curtianbig.visible', false);	
	
	-- fire

	makeLuaSprite('floor', 'background/bedroom/bedroomf/floor', -700,-400);
	scaleLuaSprite('floor', 2, 2);
	addLuaSprite('floor',false);
	setProperty('floor.visible', false);		
	
	
	-- blood
    makeLuaSprite('blood', 'background/bedroom/blood', 0, 0);
	scaleLuaSprite('blood', 2, 2);
	addLuaSprite('blood', true);
	setProperty('blood.visible', false);	
	setObjectCamera('blood', 'hud');
	
	-- stage 2 !
	makeAnimatedLuaSprite('BLOODYTHING','background/bedroom/doomsdayfb2/DoomsdayBack', -890, -400)
	scaleLuaSprite('BLOODYTHING', 4, 4);
	addAnimationByPrefix('BLOODYTHING','Tearflow', 'Tearflow', 24, true)
	addLuaSprite('BLOODYTHING', false);
	setProperty('BLOODYTHING.visible', false);
	

	makeLuaSprite('Xcurtian', 'background/bedroom/doomsdayfb2/frontcurtains', -890, -450)
	addLuaSprite('Xcurtian', false)
	setLuaSpriteScrollFactor('Xcurtian', 1, 1)
	scaleObject('Xcurtian', 2, 2.2)
	setProperty('Xcurtian.visible', false);

	makeAnimatedLuaSprite('debris','background/bedroom/doomsdayfb2/debris', -890, -400)
	scaleLuaSprite('debris', 5.2, 5.2)
	addAnimationByPrefix('debris','fallingdebris', 'fallingdebris', 24, true)
	addLuaSprite('debris', true);
	setProperty('debris.visible', false);
	
	
	-- red mist
	makeLuaSprite('roomx', 'background/bedroom/redmist/room', -700,-400);
	scaleLuaSprite('roomx', 2, 2);
	addLuaSprite('roomx', false);
	setProperty('roomx.visible', false);	
	
end