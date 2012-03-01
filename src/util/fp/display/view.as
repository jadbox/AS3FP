package util.fp.display {
	import flash.display.Sprite;
	import flash.display.DisplayObject;
	/**
	 * @author jdunlap
	 */
	public function view(sp:Sprite, ...args) : * {
		for each(var arg:* in args) {
			if(arg is DisplayObject) sp.addChild(arg as DisplayObject);
			else if(arg is Array) 
				for each(var child:DisplayObject in arg) sp.addChild(child as DisplayObject);
			else for(var key:String in arg) {
				sp[key] = arg[key];
			}
		}
		return sp;
	}
}
