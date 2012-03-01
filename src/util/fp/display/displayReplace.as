package util.fp.display {
	import flash.display.DisplayObject;
	/**
	 * @author jdunlap
	 */
	public function displayReplace(old:DisplayObject, replacement:DisplayObject=null) : DisplayObject {
		if(old!=null && old.parent!=null) old.parent.removeChild(old);
		return replacement;
	}
}