package util.fp {
	public function cons(a:*, b:*):Array { return (null==a?[]:a is Array?a:[a]).concat( (null==b?[]:b is Array?b:[b]) );  }
}