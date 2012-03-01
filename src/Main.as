/* AS3FP, http://www.jadbox.com
* Copyright (c) 2011, Jonathan Dunlap, http://www.jadbox.com
* All rights reserved. Licensed: http://www.opensource.org/licenses/bsd-license.php
* 
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
* 
* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
*/
package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import util.fp.*;
	import util.fp.xml.*;
	import util.fp.lambda.*;
	/**
	 * Collection of tests for the AS3FP
	 * https://github.com/jadders/AS3FP
	 * @author Jonathan Dunlap
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			lambdaTest(); // String Lambdas
			xmlParsing();
		}
		
		private function lambdaTest():void {
			var data:Array = [1,2,3,4,5];
			var data1:Array = lambdaMap(data, "+", 3);
			trace(data1); // 4,5,6,7,8
			
			data1 = lambdaMap(data, "*", 3);
			trace("lambdaMap *3:", data1);	//lambdaMap *3: 3,6,9,12,15
			
			data1 = lambdaMap(data, "==", 3);
			trace("lambdaMap ==3:", data1);	 //lambdaMap ==3: false,false,true,false,false
			
			data1 = lambdaMap([[1,2,3],[1,2]], "+", [4,5]);
			trace("lambdaMap [[1,2,3],[1,2]] +[4,5]:", data1[0], data1[1]); //lambdaMap [[1,2,3],[1,2]] +[4,5]: 1,2,3,4,5 1,2,4,5
			
			data1 = lambdaFilter(data, "!=", 3); //lambdaFilter !=3: 1,2,4,5
			trace("lambdaFilter !=3:", data1);
			
			data1 = lambdaFilter(data, ">", 3); //lambdaFilter > 3: 4,5
			trace("lambdaFilter > 3:", data1);
			
			data1 = lambdaFilter(data, "<=", 3); //lambdaFilter <= 3: 1,2,3
			trace("lambdaFilter <= 3:", data1);
		}
		
		private function xmlParsing():void {
			var raw:String = "<xml><game>Starcraft</game><game>Diablo</game><game>Warcraft</game></xml>";
			var data:XML = new XML(raw);
			
			var result:Array = xmlMap(data.game, mapXMLData);
			trace("xmlMap:", result); //xmlMap:  Game:Starcraft, Game:Diablo, Game:Warcraft
			
			xmlMap(data.game, mapXMLSprites).map(listCall(addChild));
		}
		
		private function mapXMLData(node:XML, index:int, xml:XMLList):String {
			return " Game:" + node.toString();
		}
		
		private function mapXMLSprites(node:XML, index:int, xml:XMLList):TextField {
			var field:TextField = new TextField();
			field.text = " Game:" + node.toString();
			field.y += index * field.textHeight;
			return field;
		}
		/* WIP! Look away!
		private var prope:Function = Guard(0, "==", 3, function(val:int):String {
			return "success";
		});
		*/
		//data1 = KT(data).K("+", 1);
		//trace('K("+1")', data1);
		//'[(x%3="fizz") + (x%5="buzz") | 1..100]'
	}
	
}