function onCreate()

	 makeAnimatedLuaSprite('back', 'weekcg/CGBG', -900,-830);
	 setLuaSpriteScrollFactor('back', 1.0, 1.0);
	scaleObject('back', 2.7,2.7);
	
	makeAnimatedLuaSprite('publico', 'weekcg/crowd-free', -100, 340);
	scaleObject('publico', 2.8,2.8);
	
	makeAnimatedLuaSprite('publico2', 'weekcg/crowd-free2',  -3, 343);
	setLuaSpriteScrollFactor('publico2', 1.0, 1.0);
	scaleObject('publico2', 2.8,2.8);
	
	makeLuaSprite('overlay', 'weekcg/BGLAYER', 2,0);
	setLuaSpriteScrollFactor('overlay', 1.0, 1.0);
	scaleObject('overlay', 1.62,1.62);
	setObjectCamera('overlay', 'hud');

	makeLuaText('sion', "Recreation By SION | Opt Alexander62", 0, -850, 20);
	setProperty('sion.alpha',0.90);
    setTextSize('sion',18);
    addLuaText('sion');
  
	addLuaSprite('back', false);
	addAnimationByPrefix('back', 'idle', 'new', 20, true);
	addLuaSprite('publico', false);
	addAnimationByPrefix('publico', 'idle', 'crowd-van', 15, true);
	addLuaSprite('publico2', false);
	addAnimationByPrefix('publico2', 'idle', 'crowd-van', 15, true);
	addLuaSprite('overlay', true);

end

function onSongStart()

doTweenX('Text', 'sion', 880, 1.7, 'circInOut')

end