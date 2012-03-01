package util.fp.display {
	import flash.display.DisplayObjectContainer;
	import flash.display.DisplayObject;
	/**
	 * @author jdunlap
	 */
	public function displayMap(obj:DisplayObjectContainer, f:Function, filter:Function=null):Array {
		var i:int, n:int, result:Array=[];
		if(filter===null) for(i = 0, n = obj.numChildren; i < n; i++)
			result.push( f( obj.getChildAt(i), i, obj ) );
		else for(i = 0, n = obj.numChildren; i < n; i++) {
			var item:DisplayObject = obj.getChildAt(i);
			if( filter(item) == true ) result.push( f( item, i, obj ) );
		}
		return result;
	}
}
