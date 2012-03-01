package util.fp.event {
	import flash.events.EventDispatcher;
	import flash.events.Event;
	/**
	 * @author jdunlap
	 */
	public function indexAddEventListener(obj:EventDispatcher, event:String, f:Function, id:Object):Function {
			var iFunction:Function=function(event:Event):void { f(event, id); };
			obj.addEventListener(event, iFunction);
			return function():void {
				obj.removeEventListener(event, iFunction);
				iFunction = null;
				f = null;
				obj = null;
			};
		}
}
