using Toybox.WatchUi;

class ShoppingListDelegate extends WatchUi.BehaviorDelegate {

	const DISPLAY_ITEM_COUNT = 5;
	
	var visibleIndexStart = 0;
	var currentIndex = visibleIndexStart;
	var itemList = [];

    function initialize() {
        BehaviorDelegate.initialize();
        
        var a = new ListItem("1");
        var b = new ListItem("2");
        var c = new ListItem("3");
        var d = new ListItem("4");
        var e = new ListItem("5");
        var f = new ListItem("6");
        var g = new ListItem("7");
        var h = new ListItem("8");
        var i = new ListItem("9");
        var j = new ListItem("10");
        var k = new ListItem("11");
        var l = new ListItem("12");
        var m = new ListItem("13");
        var n = new ListItem("14");
        var o = new ListItem("15");
        var p = new ListItem("16");
        var q = new ListItem("17");
        var r = new ListItem("18");
        var s = new ListItem("19");
        var t = new ListItem("20");
        var u = new ListItem("21");
        var v = new ListItem("22");
        
        itemList = [a, b, c, d, e, f, g, h,i,j,k,l,m,n,o,p,q,r,s,t,u,v];
        
        System.println("itemNAme: " + itemList[3].getName());
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new ShoppingListMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }
    
    function onPreviousPage() {
    	if ((visibleIndexStart) == 0){
    		visibleIndexStart = itemList.size() - DISPLAY_ITEM_COUNT; 		
    	} else if (DISPLAY_ITEM_COUNT > visibleIndexStart > 0){    		
    		visibleIndexStart = 0;
    	} else{
    		visibleIndexStart = visibleIndexStart - DISPLAY_ITEM_COUNT;
    	}
    	WatchUi.requestUpdate();
    }
     
	function onNextPage(){
    	if ((visibleIndexStart + DISPLAY_ITEM_COUNT) >= itemList.size()){
    		visibleIndexStart = 0;
    	} else{
    		visibleIndexStart = visibleIndexStart + DISPLAY_ITEM_COUNT;
    	}
    	WatchUi.requestUpdate();
    }
    
    function generateOutputItems(){
    	System.println("FUCK");
        currentIndex = visibleIndexStart;        	
        var outList = [];
        for (var x = 0; x < DISPLAY_ITEM_COUNT; x++){
			
			if ((visibleIndexStart + x) < itemList.size()){
				outList.add(itemList[visibleIndexStart + x].getName());
			} else{
				outList.add(null);
			}
        }
        System.println(outList);
        return outList;
    }

}