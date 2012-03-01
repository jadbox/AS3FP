package util.fp.display {
	import flash.display.DisplayObject;
	/**
	 * @author jdunlap
	 */
	public function belowOf(obj:DisplayObject) : Number {
		return obj.height + obj.y;
	}
}
