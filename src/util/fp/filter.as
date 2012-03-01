package util.fp {
	 public function filter(f:Function, v:Array):Array {
      var u:Array = [];
      for (var i:int = 0, n:int = v.length; i < n; ++i)
        if (f(v[i]))
          u.push(v[i]);
      return u;  
    }
}
