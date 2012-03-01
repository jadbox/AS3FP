package util.fp.xml {
	/**
	 * @author jdunlap
	 */

	public function xmlPropMap(xmlList:XMLList, prop:String, mapFun:Function, filter:Function=null) : Array {
		if(!xmlList) return [];
		var map:Array = [];
		var len:int = xmlList.length();;
			
		for(var i:int = 0; i < len; i++) {
			var item:XML = xmlList[i];
			var data:String = item[prop] || "";
			 if(filter===null) map.push( mapFun(data, i, xmlList) );
			 else if(filter(item)) map.push( mapFun(data, i, xmlList) );
		}
		return map;
	}
}
