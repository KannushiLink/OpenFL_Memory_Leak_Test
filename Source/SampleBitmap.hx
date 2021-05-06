package;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.MovieClip;
import openfl.events.*;
import openfl.Assets;
//import openfl.display.Shape;
import format.SVG;

/**
 * ...
 * @author Kannushi
 */
class SampleBitmap extends Sprite
{
	public static var list:Array<SampleBitmap> = new Array<SampleBitmap>();
	private var life:Int = 120*2;

	public function new() 
	{
		//trace("hello");
		super();

		var bitmapData = Assets.getBitmapData ("assets/box.png");
        var bitmap = new Bitmap(bitmapData);
        addChild(bitmap);
		
		list.push(this);
		Main.mainmain.addChild(this);
		x = 40;
		y = 40 + 40 + 40 * (Math.floor(Math.random() * 6) + 1);
		//addEventListener(Event.ENTER_FRAME, enterFrame);
	}
	
	public function hello() 
	{
		trace("hello sample bitmap");
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