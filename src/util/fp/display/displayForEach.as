package util.fp.display {
	import flash.display.DisplayObjectContainer;
	import flash.display.DisplayObject;
	/**
	 * @author jdunlap
	 */
	public function displayForEach(obj:DisplayObjectContainer, f:Function, filter:Function=null):* {
		var i:int, n:int;
		if(filter===null) for(i = 0, n = obj.numChildren; i < n; i++)
			f( obj.getChildAt(i), i, obj );
		else for(i = 0, n = obj.numChildren; i < n; i++) {
			var item:DisplayObject = obj.getChildAt(i);
			if( filter(item) == true ) f( item, i, obj );
		}
		return obj;
	}
}
