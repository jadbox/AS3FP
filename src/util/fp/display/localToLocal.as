package util.fp.display {
	import flash.display.MovieClip;
	import flash.geom.Point;

	public function localToLocal(fr:MovieClip, to:MovieClip):Point 
	{
		return to.globalToLocal(fr.localToGlobal(new Point()));
	}
}
