package;

import openfl.text.TextFormat;
import openfl.events.Event;
import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.Assets;

class MainTextfield extends Sprite
{
	// public static var mainmain:MainTextfield;
	var textField_text:TextField = new TextField();
	var counting:Int = 0;

	public function new()
	{
		super();

		// mainmain = this;
		
		// global enterFrame
		addEventListener(Event.ENTER_FRAME, enterFrame);
		
        var the_format:TextFormat = new TextFormat(Assets.getFont("assets/7_squared.ttf").fontName, 54);
		// if set color in TextFormat new(), the color will be locked (???)
        
		textField_text.width = 1000;
		textField_text.height = 1000;
		textField_text.mouseEnabled = false;
		textField_text.textColor = 0xffffff;
		textField_text.text = "";
		textField_text.defaultTextFormat = the_format;
		textField_text.x = 0;
		textField_text.y = 0;
		addChild(textField_text);
	}
	
	function enterFrame(eF:Event):Void {
		counting++;
		textField_text.text = counting + "";
	}
}
