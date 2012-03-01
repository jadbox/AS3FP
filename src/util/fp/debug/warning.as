package util.fp.debug {
	/**
	 * @author jdunlap
	 */
	public function warning(eval:*, text:String) : * {
		if(!eval) {
			trace( "Warning: " + text );
			return eval;
		}
		return eval;
	}
}
