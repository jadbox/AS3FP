package util.fp {
	/**
	 * @author jdunlap
	 */
	public function compose(func : Function, g : Function) : Function { 
		return function(x : *, ... args) : * {
			return func.apply(null, [g(x)].concat(args));
		};
	}
}
