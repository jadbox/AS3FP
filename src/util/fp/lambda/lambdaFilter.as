package util.fp.lambda {
	/**
	 * @author jdunlap
	 */
	public function lambdaFilter(collection:*, symbol:String, arg:*=null) : Array {
		var result:Array = [];
		var perItem:Function = function(item:*):Boolean {
			return Boolean(lambda(item, symbol, arg));
		};
		for each(var item:* in collection) {
			if(perItem(item)==true) result.push(item);
		}
		return result;
	}
}
