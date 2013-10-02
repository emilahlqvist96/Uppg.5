package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Emil Ahlqvist
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			var em:String = new String();
			em = "Emil";
			var l:String = new String();
			l = "Lukas";
			
			var emHp:int = 100;
			var emDmg:int;
			
			var lHp:int = 100;
			var lDmg:int;
			
			
			var t:TextField = new TextField();
			t.y = i * t.width + 20;
			t.x = 20; 
			t.height = 1000;
			t.width = 1000;
			
			
			for (var i:int = 1; i <=5 ; i++) 
			{
				emDmg = (Math.random() * 10) + 10;
				lDmg = (Math.random() * 10) + 10;
				emHp -= lDmg;
				lHp -= emDmg;
				
				addChild(t);
				t.appendText("Round " + i + "\n");
				t.appendText(em+ " deals " +emDmg+ "damage so " +l+ " has " +lHp+ "hp left \n");
				t.appendText(l + " deals " +lDmg + "damage so " +em + " has" +emHp + "hp left \n");
				t.appendText("\n");
				
			}
			if (emHp < lHp)
			{	
				t.appendText("Lukas Wins!");
			}
			else {
				t.appendText("Emil Wins!");
			}
		}
		
	}
	
}