package;

import openfl.events.Event;
import openfl.display.Sprite;

class Main extends Sprite
{
	public static var mainmain:Main;

	public function new()
	{
		super();

		mainmain = this;
		
		// global enterFrame
		addEventListener(Event.ENTER_FRAME, enterFrame);
	}
	
	function enterFrame(eF:Event):Void {
		// create one sprite with different drawing in it (create by different component)
		// each frame will add one object, that last about 120 frames

		// to test memory leak, you should ONLY activate one kind of sprite AT ONCE
		// run it
		// and see if you can make this simple use 4.0GB memory and crash after you have a meal

		// ================
		// draw SVG
		// leak in Hashlink/Neko(need more test)
		// ================
		var a:SampleSvg = new SampleSvg();
		SampleSvg.runAll();

		// ================
		// draw text
		// leak in Hashlink
		// ================
		var a:SampleTextfield = new SampleTextfield();
		SampleTextfield.runAll();


		// no leak (for now)

		// ================
		// draw with pure code
		// ================
		var a:SampleDrawing = new SampleDrawing();
		SampleDrawing.runAll();

		// ================
		// draw bitmap pic
		// ================
		var a:SampleBitmap = new SampleBitmap();
		SampleBitmap.runAll();

		// ================
		// empty sprite
		// ================
		var a:SampleNothing = new SampleNothing();
		SampleNothing.runAll();

		// HTML5 seem not leaking anything at the moment (Chrome)
	}
}
