function onCreate()
	-- background shit
	makeLuaSprite('Bg D', 'Bg D', 600, -300);
	setScrollFactor('Bg D', 0.9, 0.9);
	
	makeLuaSprite('Bg D', 'Bg D', -10, 50);
	setScrollFactor('Bg D', 0.9, 0.9);
	scaleObject('Bg D', 1.1, 1.1);

	addLuaSprite('Bg D', false);
	addLuaSprite('Bg D', false);
	addLuaSprite('Bg D', false);
	addLuaSprite('Bg D', false);
	addLuaSprite('Bg D', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end