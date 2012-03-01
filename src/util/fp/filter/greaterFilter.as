package util.fp.filter {
	/**
	 * @author jdunlap
	 */
	public function greaterFilter(value:*, prop:String=null) : Function {
		if(prop)	return function(val:*):Boolean {
						return val[prop] > prop;
					};
		else	return function(val:*):Boolean {
					return val > prop;
				};
	}
}
//filterForEach(ships, function(ship) { .... }, greaterFilter(10, "health") )