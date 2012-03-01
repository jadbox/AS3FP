package util.fp {
	/**
	 * @author jdunlap
	 */
	public function callOnto(method:String=null, ...args) : Function {
		return function(val:*):* {
			if(method) return val[method].apply(null, args);
			else return val.apply(null, args);
		};
	}
}
//filterForEach(ships, callOn("move"), 10, 5), isFilter(hero) )