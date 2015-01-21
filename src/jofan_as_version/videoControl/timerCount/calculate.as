package jofan_as_version.videoControl.timerCount {
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * 时间显示格式.
	 */
	
	public class calculate extends Sprite
	{
		
		private var minute:int = 0;
		private var second:int = 0;
		private var divide:int = 60;
		private var nowTimes:int = 0;
		

		public function calculate()
		{
			// constructor code
			addEventListener(Event.ENTER_FRAME,cont);
			
		}
		private function init():void
		{
			textMinute.text = "00";
			textSecond.text = "00";
		}
		
		private function cont(e:Event):void
		{
			formatTime(nowTimes++);
		} 
		private function formatTime(nowTimes:int):void
		{
			textMinute.text = timeMinute(nowTimes);
			textSecond.text = timeSecond(nowTimes);
		}
		private function timeMinute(totalTimes:int):String
		{
			return String(int(totalTimes/divide));
		}
		private	function timeSecond(totalTimes:int):String
		{
			var returnString:String;
			if (totalTimes % divide < 10)
			{
				returnString = "0" + totalTimes % divide;
			}
			else
			{
				returnString = String(totalTimes % divide);
			}
			return returnString;
		}
		

	}

}
