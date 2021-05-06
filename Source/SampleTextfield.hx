package;
import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.display.MovieClip;
import openfl.events.*;
import openfl.Assets;
//import openfl.display.Shape;
import format.SVG;

/**
 * ...
 * @author Kannushi
 */
class SampleTextfield extends Sprite
{
	public static var list:Array<SampleTextfield> = new Array<SampleTextfield>();
	private var life:Int = 120*2;

	public function new() 
	{
		//trace("hello");
		super();
        
        var the_format:TextFormat = new TextFormat(Assets.getFont("assets/7_squared.ttf").fontName, 54);
		// if set color in TextFormat new(), the color will be locked (???)
        
        var textField_text:TextField = new TextField();
		textField_text.width = 100;
		textField_text.height = 100;
		textField_text.mouseEnabled = false;
		textField_text.textColor = 0xffffff;
		textField_text.text = "99";
		textField_text.defaultTextFormat = the_format;
		textField_text.x = 0;
		textField_text.y = 0;
		addChild(textField_text);
		
		list.push(this);
		Main.mainmain.addChild(this);
		x = 40;
		y = 40 + 40 + 40 * (Math.floor(Math.random() * 6) + 1);
		//addEventListener(Event.ENTER_FRAME, enterFrame);
	}
	
	public function hello() 
	{
		trace("hello sample textfield");
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