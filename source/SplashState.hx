package;

import flixel.input.keyboard.FlxKey;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.system.FlxSound;
import MusicBeatState;
import flixel.input.keyboard.FlxKeyboard;

/**
 * ...
 * @author ...
 */
class SplashState extends MusicBeatState 
{
	private var _times:Array<Float>;
	private var _curPart:Int = 0;
	private var _functions:Array<Void->Void>;
	var enterSound = new FlxSound();
	var transitioning:Bool = false;
	
	override public function create():Void 
	{
		FlxG.fixedTimestep = false;
		
		//These are when the flixel notes/sounds play, you probably shouldn't change these if you want the functions to sync up properly
		_times = [0.041, 0.184, 0.334, 0.495, 12.636];
		
		//An array of functions to call after each time thing has passed, feel free to rename to whatever
		_functions = [addText1, addText2, addText3, addText4, addText5];
		
		for (time in _times)
		{
			new FlxTimer().start(time, timerCallback);
		}
		FlxG.sound.play(Paths.sound('SonicGingle'), 10);
		
		//put the included flixel.mp3 into your assests folder in your project
		
		super.create();
	}
	
	override public function update(elapsed:Float):Void 
	{
		//Thing to skip the splash screen
		//Comment this out if you want it unskippable
		if (FlxG.keys.justPressed.SPACE || FlxG.mouse.justPressed || FlxG.keys.justPressed.ENTER)
		{
			finishTween();
		}
		
		super.update(elapsed);
	}
	
	private function timerCallback(Timer:FlxTimer):Void
	{
		_functions[_curPart]();
		_curPart++;
		
	}
	
	private function addText1():Void
	{
		//stuff that happens
	}
	
	private function addText2():Void
	{
		//stuff that happens
	}
	
	private function addText3():Void
	{
		//stuff that happens
	}
	
	private function addText4():Void
	{
		//stuff that happens
	}
	
	private function addText5():Void
	{
		//stuff that happens
	}
	
	private function finishTween():Void
	{
		//Switches to MenuState when the fadeout tween(in the timerCallback function) is finished
		MusicBeatState.switchState(new TitleState());
		transitioning = true;
	}
	
}
