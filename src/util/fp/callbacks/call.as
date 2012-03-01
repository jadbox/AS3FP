package util.fp.callbacks {
	/**
	 * @author jdunlap
	 */
	public function call(target:Object, prop:String, val:Object) : Function {
		return function():void {
			target[prop] = val;
		};
	}
}
