package jofan_as_version.loadMc {
	
	
	/*
	 * 
	 * john.fan
	 * 
	 * 用于两个swf的渐变切换.
	 * 
	 */
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.display.Loader;
	import flash.display.MovieClip;
	public class loadOther extends Sprite {
		
		private var mc:MovieClip;
		private var url:String;
		private var loader:Loader=new Loader;
		private var MC:MovieClip;
		public function loadOther(MC:MovieClip, mc:MovieClip, url:String) {
			
			this.mc=mc;
			this.url=url;
			this.mc.alpha=0;//先设为透明....
			//trace(mc)
			//trace(url);
			this.MC=MC;//这个最外部的mc
			init();
			
		}
		private function init():void {
			
			loader.load(new URLRequest(url));
		    mc.addChild(loader);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
			
		}
		//加载完成后开始渐变出来。
		private function completeHandler(e:Event):void {
			
			mc.addEventListener(Event.ENTER_FRAME, alp);
			
		}
		private function alp(e:Event):void {
			
			mc.alpha+=0.1;
			if(mc.alpha>=1){
				mc.alpha=1;
				mc.removeEventListener(Event.ENTER_FRAME,alp);
				trace(MC.numChildren-1);
				for(var i=0;i<MC.numChildren-1;i++){
					MC.removeChild(MC.getChildAt (i));//删掉底下的所有mc
				}
			}
			
		}
		private function remove():void
		{
			
		}
	}
}