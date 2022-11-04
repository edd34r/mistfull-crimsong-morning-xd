local xx = 420;
local yy = 350;
local xx2 = 820;
local yy2 = 550;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
local idk = 0.85;

-- MESSY ASS FUCKING SCRIPT INCOMING !!!!!!!!
function onStepHit()
	if curStep == 2592 or curStep == 2726 then
	doTweenZoom('asf', 'camGame', 0.85, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.85)
	idk = 0.85;
	end 
	if curStep == 2656 or curStep == 2732 then
	doTweenZoom('asf', 'camGame', 0.95, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.95)
	idk = 0.95;
	end 
	if curStep == 2736 then
	doTweenZoom('asf', 'camGame', 1.1, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 1.1)
	idk = 1.1;
	end 
	if curStep == 2720 or curStep == 2740 then
	doTweenZoom('asf', 'camGame', 0.75, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.75)
	idk = 0.75;
	end 
	if curStep > 2464 and curStep < 2520 then
	triggerEvent('Screen Shake', '0.25, 0.012', '0.1, 0.008')
	end
end

function onEvent(name, value1, value2) --cambio de stage pitero
	if name == 'miku' then
	if value1 == '1' then --1055 step
	idk = 0.5;
	setProperty('boyfriendGroup.visible', false);
	setProperty('gfGroup.visible', false);
    triggerEvent('Change Character', '1', 'normality')
	xx = 350;
	ofs = 0;
	setProperty('curtianbig.visible', true);
	doTweenZoom('asf', 'camGame', 0.5, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.5)
	end
	if value1 == '2' then --1312 step
	idk = 0.85;
	ofs = 50;
    triggerEvent('Change Character', '1', 'DOOMSDAY_SQUIDWARD')
	setProperty('boyfriendGroup.visible', true);
	setProperty('gfGroup.visible', true);
	xx = 420;
	doTweenZoom('asf', 'camGame', 0.85, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.85)
	removeLuaSprite('curtianbig', true)
	end
	if value1 == '3' then --1568 step 
	idk = 0.65;
	doTweenZoom('asf', 'camGame', 0.65, 0.7, 'cubeOut')
	setProperty('defaultCamZoom', 0.65)
	end
	if value1 == '4' then --1572 step
	xx = 390;
	triggerEvent('Screen Shake', '0.25, 0.012', '0.1, 0.008')
	setProperty('room.visible', false);
	
	setProperty('floor.visible', true);
	end
	if value1 == '5' then --2336 step
	idk = 0.5;
	doTweenZoom('asf', 'camGame', 0.5, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.5)
	setProperty('boyfriendGroup.visible', false);
	setProperty('gfGroup.visible', false);
    triggerEvent('Change Character', '1', 'normality2')
	xx = 390;
	ofs = 0;	
	setProperty('BLOODYTHING.visible', true);
	setProperty('Xcurtian.visible', true);
	setProperty('debris.visible', true);
	end
	if value1 == '6' then --2464 step
	setProperty('room.visible', false);
	setProperty('boyfriendGroup.visible', true);
	setProperty('gfGroup.visible', true);
	xx = 390;
	ofs = 50;
	doTweenZoom('asf', 'camGame', 0.65, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.65)
	idk = 0.65;
	
	removeLuaSprite('BLOODYTHING', true)
	removeLuaSprite('Xcurtian', true)
	removeLuaSprite('debris', true)
			
	setProperty('roomx.visible', true);
	end
	if value1 == '7' then --2744 step
	triggerEvent('Screen Shake', '0.25, 0.012', '0.1, 0.008')
	setProperty('blood.visible', true);
	setProperty('suicide.visible', true);
	setProperty('room.visible', true);	
	
	setObjectOrder('dadGroup', 4)
	setObjectOrder('boyfriendGroup', 3)
	setObjectOrder('gfGroup', 3)
	
	removeLuaSprite('roomx', true)
	removeLuaSprite('floor', true)
	
	end
end
end


function onUpdate()
    if followchars == true then
        if mustHitSection == false then
			setProperty('defaultCamZoom', idk)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
			if getProperty('dad.animation.curAnim.name') == 'dielol' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
			setProperty('defaultCamZoom', 1.1)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
			end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end