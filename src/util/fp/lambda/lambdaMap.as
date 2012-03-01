package util.fp.lambda {
	/**
	 * @author jdunlap
	 */
	public function lambdaMap(collection:*, symbol:String, arg:*=null) : Array {
		var result:Array = [];
		var perItem:Function = function(item:*):* {
			return lambda(item, symbol, arg);
		};
		for each(var item:* in collection) {
			result.push(perItem(item));
		}
		return result;
	}
}
