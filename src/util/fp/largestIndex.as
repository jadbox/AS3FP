package util.fp {
	/**
	 * @author jdunlap
	 */
	public function largestIndex(array:*) : * {
		var highest:* = null;
		var highestIndex:int = -1;
		var fun:Function =  function(val:*, index:int, array:*) : void {
				if(!highest || val > highest) { highest = val; highestIndex = index; }
		};
		array.forEach(fun);
		return highestIndex;
	}
}
