package util.fp.display {
	import flash.display.DisplayObject;
	/**
	 * @author jdunlap
	 */
	public function rightOf(obj:DisplayObject) : Number {
		return obj.width + obj.x;
	}
}
