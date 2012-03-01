package util.fp.callbacks {
	/**
	 * @author jdunlap
	 */
	public function setTrue(obj:Object, prop:String) : Function {
		return call(obj, prop, true);
	}
}
