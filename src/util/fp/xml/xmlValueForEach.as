package util.fp.xml {
	/**
	 * @author jdunlap
	 */

	public function xmlValueForEach(xmlList:XMLList, mapFun:Function, filter:Function=null) : void {
		if(!xmlList) return;
		var len:int = xmlList.length();;
			
		for(var i:int = 0; i < len; i++) {
			var item:XML = xmlList[i];
			 if(filter===null) mapFun(xmlList[i].toString(), i, xmlList);
			 else if(filter(item)) mapFun(xmlList[i].toString(), i, xmlList);
		}
	}
}
