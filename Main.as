package {
	import flash.events.Event;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	/**
	 * The Engine.
	 */
	//[SWF(width="960",height="288",frameRate="60")] //didn't do anything for browser embedding!
	public class Main extends Engine {
		
		public function Main():void {
			super(640, 480, 30, true);
			
			//for debugging
			//FP.console.enable();
			//FP.volume = 0;
			
			FP.world = new Game();
			
			this.addEventListener(Event.ACTIVATE, onActivate)
			this.addEventListener(Event.DEACTIVATE, onDeactivate)
		}
		
		private function onActivate(e:Event):void {
			if (FP.world is Game)
				Game.isPaused = false;
		}
		
		private function onDeactivate(e:Event):void {
			if (FP.world is Game)
				Game.isPaused = true;
		}
	}
}