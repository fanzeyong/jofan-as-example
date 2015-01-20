package  {
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.display.Sprite;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
    import jofan_as_version.loadMc.loadOther;
	public class loadMcAlpha extends Sprite{
		private var loader:Loader;
		private var url:String;
		private var currentSwf:MovieClip;
		private var newSwf:MovieClip;
		//private var mcf:MovieClip=new MovieClip(); 
		public function loadMcAlpha() {
			// constructor code
			//trace(currentSwf);
			mc1.addEventListener(MouseEvent.CLICK,mc1c);
			mc2.addEventListener(MouseEvent.CLICK,mc2c);
			//var mcf:MovieClip=new MovieClip();
			//MC.addChild(mcf);
		}
		
		private function mc1c(e:MouseEvent):void{
			/*var mcf:MovieClip=new MovieClip();
			MC.addChild(mcf);*/
			var mc1:MovieClip=new MovieClip(); 
			MC.addChild(mc1);
			var load1:loadOther=new loadOther(MC,mc1,"load1.swf");
		}
		private function mc2c(e:MouseEvent):void{
			var mc2:MovieClip=new MovieClip();
			MC.addChild(mc2);
			//mc2.x=100
			var load2:loadOther=new loadOther(MC,mc2,"load2.swf");
			//trace(MC.getChildAt (0));
			/*for(var i=0;i<MC.numChildren-1;i++){
				MC.removeChild(MC.getChildAt (i) );
			}*/
		}
		private function init():void{
			
		}
	}
	
}
