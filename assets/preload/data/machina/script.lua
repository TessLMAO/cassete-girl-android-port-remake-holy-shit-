local allowCountdown = false

function onStartCountdown()
	if not allowCountdown and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startSong', 3.5)
		runTimer('ambiente', 0)
		runTimer('cass', 1)
		runTimer('bye', 3.1)
		runTimer('Sonido', 0.8)
		runTimer('chaoqliao', 3.5)
		
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startSong' then
		allowCountdown = true
        startCountdown()
        
	    end
	if tag == 'ambiente' then
	    doTweenAlpha('Hud', 'camHUD', 0, 0.1, 'currentBeat');
	    doTweenZoom('One', 'camGame', 0.8, 2, 'smootherStepInOut');
	    
	    end
	if tag == 'cass' then
	    objectPlayAnimation('cassette', 'chill', true);
	    
	    end
	if tag == 'bye' then
	     setProperty('dad.alpha', 1)
	    setProperty('cassete.alpha', 0)
	    doTweenZoom('One', 'camGame', 0.68, 2, 'smootherStepInOut');
	    
	    end
	if tag == 'Sonido' then
	    playSound('rewind', 1.5)
	
		end
	if tag == 'chaoqliao' then
	   
	    doTweenAlpha('Hud', 'camHUD', 1, 0.6, 'currentBeat');
	
	end
end

function onCreatePost()
	makeAnimatedLuaSprite('cassete', 'characters/cassettegirl-chill', 62, 420);
	addAnimationByPrefix('cassete', 'chill', 'cassettegirl-chill', 24, false);
	scaleObject('cassete', 2,2);
	addLuaSprite('cassete', true)
	setProperty('dad.alpha', 0)
	setProperty('overlay.alpha', 0)
	runTimer('cass', 1.0)
	runTimer('chao', 3.9)
end