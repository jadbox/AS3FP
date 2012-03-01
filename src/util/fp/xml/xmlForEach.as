package util.fp.xml {
	/**
	 * @author jdunlap
	 */
	public function xmlForEach(xmlList:XMLList, mapFun:Function, filter:Function=null) : XMLList {
		if(!xmlList) return xmlList;
		var len:int = xmlList.length();
		for(var i:int = 0; i < len; i++) {
			var item:XML = xmlList[i];
			 if(filter===null) mapFun(item, i, xmlList);
			 else if(filter(item)) mapFun(item, i, xmlList);
		}
		return xmlList;
	}
}
