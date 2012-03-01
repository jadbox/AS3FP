package util.fp.filter {
	public function lessFilter(value:*, prop:String=null) : Function {
		if(prop)	return function(val:*):Boolean {
						return val[prop] < prop;
					};
		else	return function(val:*):Boolean {
					return val < prop;
				};
	}
}
//filterForEach(ships, function(ship) { .... }, lessFilter(10, "health") )