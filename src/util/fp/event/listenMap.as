package util.fp.event {
	import flash.display.DisplayObject;
	import util.fp.filterForEach;
	import util.fp.listCall;
	/**
	 * @author jdunlap
	 */
	public function listenMap(f:Function, targets:Array, events:Array, remove:Boolean=false) : void {
		for each(var target:DisplayObject in targets)
			filterForEach(events, listCall(remove?target.removeEventListener:target.addEventListener, f));
	}
}
