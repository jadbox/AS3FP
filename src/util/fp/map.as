package util.fp {  
    public function map(f:Function, v:Array):Array {
      return foldr(compose(cons, f), [], v) as Array;
    }    
}
