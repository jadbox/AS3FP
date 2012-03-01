package util.fp.event {
	import flash.events.EventDispatcher;
	/**
	 * @author jdunlap
	 */
	 /*
	public static function listen(obj:EventDispatcher, name:String, f:Function, weak:Boolean) : Function {
		obj.addEventListener(name, f, false, 0, weak);
		var _listen:Function = function (obj:EventDispatcher, name:String, _f:Function=null):Function {
			obj.addEventListener(name, _f===null?f:_f, false, 0, weak);
			return _listen;
		};
		return _listen;
	}*/
	public function listen(f:Function, weak:Boolean, ...args):Function {
		var fun:Function = function(enable:Boolean):void {
			var clone:Array = args.concat([]);
			while(clone.length > 0) {
				var target:EventDispatcher = clone.splice(0, 1);
				var event:String = clone.splice(0, 1);
				if(enable) target.addEventListener(event, f, false, 0, weak);
				else target.removeEventListener(event, f);
			}
		};
		fun(true);
		return fun;
	}
}

//listen(txt, "click", onEvent)(txt, "test")()
