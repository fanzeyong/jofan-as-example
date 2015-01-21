package jofan_as_version.videoControl {
	import flash.text.TextField;
	import flash.media.Video;
	import flash.net.NetConnection;
	import flash.net.NetStream;
	import flash.events.NetStatusEvent;
	import flash.text.TextFieldAutoSize;
	import flash.display.Sprite;
	import flash.events.Event;
	public class playVideo extends Sprite
	{
		private var _stream:NetStream;
		private var _video:Video;
		private var _playbackTime:TextField;
		private var _duration:uint;
		public function playVideo()
		{
			initVid()
		}
		private function initVid(url:String="flv/video.flv",_w:int=160,_h:int=120):void
		{
			_video = new Video(160,120);
			_playbackTime = new TextField ();
			_playbackTime.autoSize = TextFieldAutoSize.LEFT;
			_playbackTime.y = 120;
			_playbackTime.text = "test";
			_duration = 0;
			var connection:NetConnection = new NetConnection  ;
			connection.connect(null);
			_stream = new NetStream(connection);
			_stream.play("flv/video.flv");
			var client:Object = new Object  ;
			client.onMetaData = onMetaData;
			_stream.client = client;
			_video.attachNetStream(_stream);

			addChild(_video);
			addChild(_playbackTime);
			addEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
		private function onMetaData(data:Object):void
		{
			_duration = data.duration;
		}
		private function onEnterFrame(event:Event):void
		{
			if (_duration > 0 && _stream.time > 0)
			{
				_playbackTime.text = Math.round(_stream.time) + " / " + Math.round(_duration);
			}
		}
	}
}