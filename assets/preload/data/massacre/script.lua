function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.30 then
        setProperty('health', health- 0.025);
    end
end

function onCreate() --no hay animacion de muerte :((((
setPropertyFromClass('GameOverSubstate', 'characterName', 'LFGF');
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'dead-massacre');
end