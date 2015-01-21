package jofan_as_version.videoControl.slideBar{
	//定义百分比计算
	import jofan_as_version.videoControl.slideBar.barre;

	public class beginDarg implements barre
	{
		public var loca:Number;
		public function get xx():Number
		{
			loca = int(loca * 100) / 100;
			return loca;
		}
		public function beginDarg(percent:Number)
		{
			loca = percent;
		}
	}
}