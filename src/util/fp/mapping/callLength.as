package util.fp.mapping {
	/**
	 * @author jdunlap
	 */
	public function callLength(target:*, prop:String, arr:*) : * {
		if(target.length is Function) return target.length();
		else return target.length;
	}
}
