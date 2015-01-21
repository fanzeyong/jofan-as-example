package 
{
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import jofan_as_version.videoControl.slideBar.slide
	import jofan_as_version.videoControl.slideBar.beginDarg
	public class dh extends Sprite
	{
		public var slideClass:slide;
		public function dh()
		{
			//一个背一个滑块
			slideClass = new slide(dhl,dhl.barry,dhl.bg);
			init();
		}
		private function init():void
		{

			//鼠标按下去的时候......
			dhl.bg.addEventListener(MouseEvent.MOUSE_DOWN,slideClass.mouseDownMc);
			dhl.bg.addEventListener(MouseEvent.MOUSE_UP,slideClass.mouseUpMc);
			dhl.bg.addEventListener(MouseEvent.MOUSE_OUT,slideClass.mouseUpMc);

			//侦听滑块百分比
			dhl.bg.addEventListener(MouseEvent.MOUSE_DOWN,dhBgEnter);
			dhl.bg.addEventListener(MouseEvent.MOUSE_UP,dhBgRomove);
			dhl.bg.addEventListener(MouseEvent.MOUSE_OUT,dhBgRomove);
		}
		//------------侦听百分数------------
		private function dhBgEnter(e:Event):void
		{
			dhl.bg.addEventListener(Event.ENTER_FRAME,percent);
		}
		private function dhBgRomove(e:Event):void
		{
			dhl.bg.removeEventListener(Event.ENTER_FRAME,percent);
		}
		//返回百分数.........
		private function percent(e:Event):void
		{
			var thePercent:beginDarg = new beginDarg(slideClass.returnPencent);
			trace(thePercent.xx);
		}
	}
}