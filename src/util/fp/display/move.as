package util.fp.display {
	import flash.display.DisplayObject;
	/**
	 * @author jdunlap
	 */
	public function move(obj:DisplayObject, x:Number, y:Number) : DisplayObject {
		obj.x = x;
		obj.y = y;
		return obj;
	}
}
