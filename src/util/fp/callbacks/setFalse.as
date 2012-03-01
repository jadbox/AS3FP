package util.fp.callbacks {
	/**
	 * @author jdunlap
	 */
	public function setFalse(obj:Object, prop:String) : Function {
		return call(obj, prop, false);
	}
}
