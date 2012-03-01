package util.fp {
	/**
	 * f parameter can be a function to call on the list item or a String lambda
	 * @author jdunlap
	 */
	public function listCall(f : Function = null, ...args) : Function {
		return function(item : *, index : int, array : *) : * {
			if (f is Function) return f.apply(null, cons(item, args));
			else if (f === null) item.apply(null, args);
		};
	}
}