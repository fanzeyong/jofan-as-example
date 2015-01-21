package jofan_as_version.videoControl.slideBar {
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.media.Video;

	public class slide extends Sprite
	{
		public var mc_barry:MovieClip;
		public var mc_bg:MovieClip;
		public var dhl:MovieClip;
		public var returnPencent:Number;
		public function slide(mc1:MovieClip,mc2:MovieClip,mc3:MovieClip):void
		{
			dhl=mc1
			mc_barry=mc2;
			mc_bg=mc3;

		}
		public function mouseDownMc(e:MouseEvent):void
		{
			mc_barry.addEventListener(Event.ENTER_FRAME,updataMcX);
		}
		public function mouseUpMc(e:MouseEvent):void
		{
			mc_barry.removeEventListener(Event.ENTER_FRAME,updataMcX);
		}
		private function updataMcX(e:Event):void
		{
			//滑动的范围....beginDarg
			returnPencent=(mc_barry.x-e.target.width/2)/(mc_bg.width-e.target.width);			
			if (mouseX < mc_bg.x + e.target.width / 2 + dhl.x)
			{
				mc_barry.x = mc_bg.x + e.target.width / 2;
			}
			else if (mouseX>mc_bg.width-e.target.width/2 + dhl.x)
			{
				mc_barry.x = mc_bg.width - e.target.width / 2;
			}
			else
			{
				mc_barry.x = mouseX - dhl.x;
			}
			//returnPencent;
		}

	}

}