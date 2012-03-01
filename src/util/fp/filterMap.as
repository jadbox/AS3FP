package util.fp {
	/**
	 * @author jdunlap
	 */
	public function filterMap(arr:*, mapBy:Function, filterBy:Function=null) : void {
		if(filterBy!==null) arr = arr.filter(filterBy);
		arr.map(mapBy);
	}
}
