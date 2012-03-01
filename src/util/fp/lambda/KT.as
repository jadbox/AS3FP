package util.fp.lambda {
	/**
	 * Combinators!
	 * @author jdunlap
	 */
	public function KT(obj : *) : * {
		var K : Function = function(x : * , args:*) : * {
			if (x is String) lambda(obj, x, args); 
			else if (x is Function) Function(x).apply(obj, cons(obj, args));
			return KT(obj);
		};
		var T : Function = function(x : * , args:*) : * {
			var value : *;
			if (x is String) value = lambda(obj, x, args);  
			else if (x is Function) value = Function(x).apply(obj, cons(obj, args));
			return KT(value);
		};
		var result : Object = {K:K, T:T, value:obj};
		
		return result;
	}
}