function onCreate()
     
     makeLuaSprite('cglucesL2', 'LEFT LIGHT', -60, 0);
     scaleObject('cglucesL2', 1.8,1.8);
     setObjectCamera('cglucesL2', 'other');
	
	makeLuaSprite('cglucesD2', 'DOWN LIGHT', -60, 0);
	scaleObject('cglucesD2', 1.8,1.8);
	setObjectCamera('cglucesD2', 'other');
	
	makeLuaSprite('cglucesU2', 'UP LIGHT', -60, 0);
	 scaleObject('cglucesU2', 1.8,1.8);
		setObjectCamera('cglucesU2', 'other');
		
	makeLuaSprite('cglucesR2', 'RIGHT LIGHT', -60, 0);    
	scaleObject('cglucesR2', 1.8,1.8);
	setObjectCamera('cglucesR2', 'other');
	 
	 addLuaSprite('cglucesL2', false);
	 addLuaSprite('cglucesD2', false);
	 addLuaSprite('cglucesU2', false);
	 addLuaSprite('cglucesR2', false);
	 setProperty('cglucesL2.alpha', 0)
	 setProperty('cglucesD2.alpha', 0)
	 setProperty('cglucesU2.alpha', 0)
	 setProperty('cglucesR2.alpha', 0)
	 
end
	 
function opponentNoteHit(id, noteData, isSustainNote)
	if noteData == 0 then
  	
  	doTweenAlpha('Eleto', 'cglucesL2', 1.5, 0.1, 'linear');
  
			
	elseif noteData == 1 then
	
	doTweenAlpha('Dedo', 'cglucesD2', 1.5, 0.1, 'linear');
		
				
	elseif noteData == 2 then
						              doTweenAlpha('Pija', 'cglucesU2', 1.5, 0.1, 'linear');
	
	elseif noteData == 3 then
						                doTweenAlpha('Holabro', 'cglucesR2', 1.5, 0.1, 'linear');
    end
end
	
function onTweenCompleted(tag)
	if tag == 'Eleto' then
						                doTweenAlpha('europap', 'cglucesL2', 0, 0.5, 'linear');	            
						                end
						                if tag == 'Dedo' then
	  
	  doTweenAlpha('mexicanop', 'cglucesD2', 0, 0.5, 'linear');
	  
	  end
    
    if tag == 'Pija' then
						               doTweenAlpha('mexicannoisesp', 'cglucesU2', 0, 0.5, 'linear');
						                end
						                if tag == 'Holabro' then
						               doTweenAlpha('ugaugap', 'cglucesR2', 0, 0.5, 'linear');
						               
	end				
end

function onStepHit()
		if curStep == 2 then
		
	 setProperty('cglucesL2.visible', false)
	 setProperty('cglucesD2.visible', false)
	 setProperty('cglucesU2.visible', false)
	 setProperty('cglucesR2.visible', false)
			
			end

		if curStep == 639 then
		
	 setProperty('cglucesL2.visible', true)
	 setProperty('cglucesD2.visible', true)
	 setProperty('cglucesU2.visible', true)
	 setProperty('cglucesR2.visible', true)
			
			end
			
		if curStep == 640 then
		
	setProperty('cglucesL2.alpha', 0)
	 setProperty('cglucesD2.alpha', 0)
	 setProperty('cglucesU2.alpha', 0)
	 setProperty('cglucesR2.alpha', 0)
			end

		if curStep == 959 then
		
	setProperty('cglucesL2.alpha', 0)
	 setProperty('cglucesD2.alpha', 0)
	 setProperty('cglucesU2.alpha', 0)
	 setProperty('cglucesR2.alpha', 0)
			
		    end
		
		if curStep == 960 then
		
	setProperty('cglucesL2.visible', false)
	 setProperty('cglucesD2.visible', false)
	 setProperty('cglucesU2.visible', false)
	 setProperty('cglucesR2.visible', false)
			
	end
end
