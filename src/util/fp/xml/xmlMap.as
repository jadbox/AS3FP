package util.fp.xml {
	/**
	 * @author jdunlap
	 */
	public function xmlMap(xmlList:XMLList, mapFun:Function, filter:Function=null) : Array {
		if(!xmlList) return [];
		var map:Array = [];
		var len:int = xmlList.length();;
			
		for(var i:int = 0; i < len; i++) {
			var item:XML = xmlList[i];
			 if(filter===null) map.push( mapFun(xmlList[i], i, xmlList) );
			 else if(filter(item)) map.push( mapFun(xmlList[i], i, xmlList) );
		}
		return map;
	}
}
