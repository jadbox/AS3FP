package util.fp {
	public function foldr(op:Function, z:*, v:Array):* {
      if (0 == v.length)
        return z;  
      return op(car(v), foldr(op, z, cdr(v)));
    }
}
