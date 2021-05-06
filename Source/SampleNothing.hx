package;
import openfl.display.Sprite;
import openfl.display.MovieClip;
import openfl.events.*;
import openfl.Assets;
//import openfl.display.Shape;
import format.SVG;

/**
 * ...
 * @author Kannushi
 */
class SampleNothing extends Sprite
{
	public static var list:Array<SampleNothing> = new Array<SampleNothing>();
	private var life:Int = 120*2;

	public function new() 
	{
		//trace("hello");
		super();
		
		list.push(this);
		Main.mainmain.addChild(this);
		x = 40;
		y = 40 + 40 + 40 * (Math.floor(Math.random() * 6) + 1);
		//addEventListener(Event.ENTER_FRAME, enterFrame);
	}
	
	public function hello() 
	{
		trace("hello sample nothing");
	}
	
	//function enterFrame(eF:Event):Void {
	//}
	
	public function runSingle() {
		x+=2;
		life--;
		if (life <= 0) {
			remove();
		}
	}
	
	public static function runAll() {
		//trace(list.length);
		var i:Int = list.length-1;
		while (i >= 0) {
			list[i].runSingle();
			i--;
		}
	}
	
	public function remove() {
		// var ID:Int = list.indexOf(this);
		// list.splice(ID, 1);
		list.remove(this);
		Main.mainmain.removeChild(this);
		//removeEventListener(Event.ENTER_FRAME, enterFrame);
	}

}