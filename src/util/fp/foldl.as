package util.fp {
	public function foldl(op:Function, z:*, v:Array):* {
      if (0 == v.length)
        return z;      
      return foldl(op, op(z, car(v)), cdr(v));
    }
}
