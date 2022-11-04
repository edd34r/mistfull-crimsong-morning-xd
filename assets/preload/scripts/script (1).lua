function onBeatHit()
    -- triggered 2 times per section
    if curBeat % 1 == 0 then
        setProperty('iconP2.angle', 20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');

        setProperty('iconP1.angle', 20);
        doTweenAngle('bop', 'iconP1', 0,0.2,'cubicOut');
    end
    -- triggered 4 times per section
    if curBeat % 2 == 0 then
        setProperty('iconP2.angle', -20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');

        setProperty('iconP1.angle', -20);
        doTweenAngle('bop', 'iconP1', 0,0.2,'cubicOut');
    end
    --script made by Gazozoz
end
function onCreate()
    makeLuaText('songText', "Port By fnf mods", 0, 2, 700);
    setTextAlignment('songText', 'left');
    setTextSize('songText', 18);
    setTextBorder('songText', 1, '2b0000');
    setObjectCamera('songText', 'other');
    addLuaText('songText');
end

function onUpdate(elapsed)
    currentDifficulty = getProperty('storyDifficultyText');
    setTextString('songText', "Port By fnf mods");
end
