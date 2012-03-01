package util.fp {
	/**
	 * @author jdunlap
	 */

	public function propOn(prop:String) : Function {
		return function(val:*):* {
			return val[prop];
		};
	}
}
