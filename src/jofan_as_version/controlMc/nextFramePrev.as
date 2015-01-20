package jofan_as_version.controlMc {
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	public class nextFramePrev extends MovieClip
	{
		//鼠标的按下与释放
		private var _m:Boolean = false;
		private var newx:Number = 0;
		//旧坐标
		private var oldx:Number = 0;
		private var _timer:Timer;
		private var mc:MovieClip;
		public function nextFramePrev()
		{
			
			
		}
		public function _init(mc:MovieClip):void
		{
			this.mc = mc;
			// constructor code
			mc.stop();
			//间隔......
			_timer = new Timer(1000,1);
			_timer.start();
			_timer.addEventListener(TimerEvent.TIMER,on_time);
			//在没有加stage或指明原件时，主要以任意元件为响应区域...
			addEventListener(MouseEvent.MOUSE_DOWN,_down);
			addEventListener(MouseEvent.MOUSE_MOVE,_move);
			addEventListener(MouseEvent.MOUSE_UP,_up);
		}
		public function _down(event:MouseEvent):void
		{
			_timer.stop();
			oldx = mouseX;
			_m = true;
			///trace("aaaaaaaaaaaaa")

		}
		public function _move(event:MouseEvent):void
		{
			newx = mouseX;
			if (_m)
			{
				if (newx - oldx < -5)
				{
					mc.prevFrame();
					//trace(mc.currentFrame);
					oldx = newx;
					//在每一帧时什有什么变化....
					if (1 == mc.currentFrame)
					{
						//mc.gotoAndStop(mc.totalFrames);
					}
				}
				//前后差别五个像素时...
				else if (newx - oldx > 5)
				{
					mc.nextFrame();
					oldx = newx;
					if (mc.totalFrames == mc.currentFrame)
					{
						//mc.gotoAndStop(1);
					}
				}
			}
		}
		public function _up(event:MouseEvent):void
		{
			_m = false;
			_timer.start();
		}
		public function on_time(event:TimerEvent):void
		{
			_timer.stop();
		}
	}
}