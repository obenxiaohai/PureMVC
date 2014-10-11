package
{
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	public class pureMVCTest extends Sprite
	{
		private var txtEko:TextField ;
		private var btnEko:SimpleButton;
		public function pureMVCTest()
		{
			if(stage) init();
			else addEventListener(Event.ADDED_TO_STAGE,init);
		}
		private function init(e:Event = null):void{
			
		}
	}
}