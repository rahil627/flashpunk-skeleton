package com.aberustudios.skeleton
{
	public final class L
	{
		public static var language:String = "english";
		
		private static var strings:Object =
			{		
				english: 
				{
					hello: "Hello",
					saysomething: "Say something to me, please!"
				},
				catalan:
				{
					hello: "Hola",
					saysomething: "Diga'm quelcom, siusplau!"
				}
			};
		
		public static function get(key:String):String
		{
			return strings[language][key];
		}
	}
}