This library is a collection of functional idioms for ActionScript 3 based on Haskell and Coffeescript. Below are a couple example utilities from the library.

String Lambdas:

    private function lambdaTest():void {
        var data:Array = [1,2,3,4,5];
        var data1:Array = lambdaMap(data, "+", 3);
        // The result is: 4,5,6,7,8
        trace(data1); 
            
        data1 = lambdaMap(data, "*", 3);
        //lambdaMap *3: 3,6,9,12,15
        trace("lambdaMap *3:", data1);  
    
            
        data1 = lambdaMap(data, "==", 3);
        //lambdaMap ==3: false,false,true,false,false
        trace("lambdaMap ==3:", data1);  
            
        data1 = lambdaMap([[1,2,3],[1,2]], "+", [4,5]);
        //lambdaMap [[1,2,3],[1,2]] +[4,5]: [[1,2,3,4,5], [1,2,4,5]]
        trace("lambdaMap [[1,2,3],[1,2]] +[4,5]:", "[["+data1[0]+"], ["+ data1[1]+"]"); 
            
        data1 = lambdaFilter(data, "!=", 3); 
        //lambdaFilter !=3: 1,2,4,5
        trace("lambdaFilter !=3:", data1);
            
        data1 = lambdaFilter(data, ">", 3); 
        //lambdaFilter > 3: 4,5
        trace("lambdaFilter > 3:", data1);
            
        data1 = lambdaFilter(data, "<=", 3); 
        //lambdaFilter <= 3: 1,2,3
        trace("lambdaFilter <= 3:", data1);
    }

XML Comprehensions:

    private function xmlParsing():void {
        var raw:String = "<xml><game>Starcraft</game><game>Diablo</game><game>Warcraft</game></xml>";
        var data:XML = new XML(raw);
            
        var result:Array = xmlMap(data.game, mapXMLData);
        //xmlMap:  Game:Starcraft, Game:Diablo, Game:Warcraft
        trace("xmlMap:", result); 

        // create a TextField for each node and add them to the display
        xmlMap(data.game, mapXMLSprites).forEach(listCall(addChild));
    }

    // Used to transform an XML element into a constructed String with a prefix     
    private function mapXMLData(node:XML, index:int, xml:XMLList):String {
        return " Game:" + node.toString();
    }

    // Used to transform an XML element into a TextField        
    private function mapXMLSprites(node:XML, index:int, xml:XMLList):TextField {
        var field:TextField = new TextField();
        field.text = " Game:" + node.toString();
        field.y += index * field.textHeight;
        return field;
    }

For more information and examples:
http://www.jadbox.com/2012/02/announcing-as3fp/