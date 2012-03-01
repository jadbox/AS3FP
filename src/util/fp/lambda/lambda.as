package util.fp.lambda {
	import flash.display.DisplayObjectContainer;
	import flash.display.DisplayObject;
	import flash.geom.Point;
	import util.fp.display.*;

	import util.fp.cons;
	/**
	 * @author jdunlap
	 */
	public function lambda(obj : *, opString : String, args : *="") : * {
		var op : String = opString;
		var arg : * = args;
		// var ops:Array = opString.split("_");
		// op = ops.pop();
		// ops.forEach(callback);
		// if(args is Array) {
		// arg = args[0];
		// }
		// var firstOp:int = op.indexOf("_");
		// op = op.substring(0, firstOp+1);
		//trace(op,obj,args);
		if (op == "=") {
			if (obj is DisplayObject && arg is Point) move(obj, arg.x, arg.y);
		}
		if (op == "+") {
			if(obj is Array && arg is Array) return cons(obj, arg);
			if (obj is DisplayObject && arg is Point) offset(obj, arg.x, arg.y);
			if (obj is DisplayObjectContainer && arg is Class) return obj.addChild(new arg());
			return obj + arg;
		} 
		/*
		if (op == "!+") {
			if(obj is Array && ) return cons(arg, obj);
			if (arg is DisplayObjectContainer && obj is Class) return arg.addChild(new obj());
			return arg + obj;
		}
		*/
		if(op=="=pt") {
			obj.x = arg.x;
			obj.y = arg.y;
			return obj;
		}
		if(op=="+pt") {
			obj.x += arg.x;
			obj.y += arg.y;
			return obj;
		}
		if (op == "*") return obj * arg;
		if (op == "/") return obj / arg;
		if (op == "%") return obj % arg;
		if (op == "-") return obj - arg;
		if (op == "!") return !obj;
		if(op=="&&") return obj && arg;
		if(op=="||") return obj || arg;
		if (op == "==") {
			if (arg is Class) return (obj is arg);
			if (arg is Array && !(obj is Array)) {
				
			}
			return obj == arg;
		} if (op == "!=") return obj != arg;
		if (op == "<") return obj < arg;
		if (op == "<=") return obj <= arg;
		if (op == ">") return obj > arg;
		if (op == ">=") return obj >= arg;
		if (op == "pop") return obj.pop();
		if (op == "shift") return obj.shift();
		if (op == "push") return obj.push(arg);
		if (op == "sort") return obj.sort();
		if (op.charAt() == ".") return obj[op.replace(".", "")] = arg;
		if (obj[op] is Function) return obj[op].apply(null, cons(arg, []));
		if (Object(obj).hasOwnProperty(op)) return obj[op] = arg;
	}
}
