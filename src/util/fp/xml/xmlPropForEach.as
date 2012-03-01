package util.fp.xml {
	/**
	 * @author jdunlap
	 */

	public function xmlPropForEach(xmlList:XMLList, prop:String, mapFun:Function, filter:Function=null) : void {
		if(!xmlList) return;
		var len:int = xmlList.length();;
			
		for(var i:int = 0; i < len; i++) {
			var item:XML = xmlList[i];
			var data:String = item[prop] || "";
			 if(filter===null) mapFun(data, i, xmlList);
			 else if(filter(item)) mapFun(data, i, xmlList);
		}
	}
}
