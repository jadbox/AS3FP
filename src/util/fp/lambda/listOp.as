package util.fp.lambda {
	import flash.display.DisplayObjectContainer;
	/**
	 * @author jdunlap
	 */
	public function listOp(opString:String, arg:*="") : Function {
		return function(obj : *, index : int=null, array : *=null) : * {
			return lambda(obj, opString, arg);
		};
	}
}