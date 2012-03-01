package util.fp {
	/**
	 * @author jdunlap
	 */
	public function lowestIndex(array:*) : * {
		var highest:* = null;
		var lowestIndex:int = -1;
		var fun:Function =  function(val:*, index:int, array:*) : void {
				if(!highest || val < highest) { highest = val; lowestIndex = index; }
		};
		array.forEach(fun);
		return lowestIndex;
	}
}
