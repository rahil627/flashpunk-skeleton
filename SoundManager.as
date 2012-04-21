package com.aberustudios.skeleton
{
	import net.flashpunk.Sfx;
	
	public final class SoundManager
	{
		//[Embed(source="somesoundeffect.mp3")] public static const SOME_SOUND_EFFECT:Class;
		
		//[Embed(source="somemusic.mp3")] public static const SOME_MUSIC:Class;
		
		//public static var some_music:Sfx = new Sfx(SOME_MUSIC);

		private static var _currentMusic:Sfx;
		
		public static function get currentMusic():Sfx
		{
			return _currentMusic;
		}
		
		public static function set currentMusic(music:Sfx):void
		{
			if(_currentMusic != music)
			{
				if(_currentMusic) _currentMusic.stop();
				_currentMusic = music;
				_currentMusic.volume = G.volumeMusic;
				_currentMusic.loop(G.volumeMusic);
			}
		}
		
		public static function playSound(name:String, pan:Number=0, callback:Function=null):void
		{
			var s:Sfx = new Sfx(this[name.toUpperCase()], callback);
			s.play(G.volumeSound, pan);
		}
	}
}