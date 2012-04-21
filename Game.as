package {
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.World;
	
	/**
	 * The Game World!
	 * @author Rahil Patel
	 */
	public class Game extends World {
		
		public static var isPaused:Boolean = false;
		private var currentLevel:int = 0;
		private var timer:int = 0;
		
		public function Game() {
			super();
			Global.game = this;
		}
		
		override public function update():void {
			if (Input.pressed(Key.P))
			isPaused = !isPaused;
			
			if (isPaused)
				return;
			
			super.update();
		}
	}
}