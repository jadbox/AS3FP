package util.fp.debug {
	/**
	 * @author jdunlap
	 */
	public function assert(eval:*, errorText:String="Assert failed") : * {
		if(!eval) throw new Error(errorText);
		return eval;
	}
}
