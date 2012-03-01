package util.fp {
	/**
	 * @author jdunlap
	 */
	public function filterForEach(arr:*, action:Function, filterBy:Function=null) : void {
		if(filterBy!==null) arr = arr.filter(filterBy);
		arr.forEach(action);
	}
}
