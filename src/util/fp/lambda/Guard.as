package util.fp.lambda 
{
	/**
	 * ...
	 * @author Jonathan Dunlap
	 */
	public function Guard(argIndex:int, op:String, opArg:*, func:Function):Function
	{
		return function(...args):* {
			if ( lambda(args[argIndex], op, opArg) ) return func.apply(null, args);
		}
	}

}

//var prope:Function = Guard(0, "==", 3, function(val:int):void {
	
	
//});