using Toybox.WatchUi;
using Toybox.Graphics;

class ShoppingListView extends WatchUi.View {
	
	const VERTICAL_OFFSET = 40;
	const FONT = Graphics.FONT_MEDIUM;
	const FONT_HEIGHT = Graphics.getFontHeight(FONT);
	
	var itemsToPrint = [];
	var myDelegate = null;
	
    function initialize(delegate) {
        View.initialize();
        myDelegate = delegate;
    }

    // Load your resources here
    function onLayout(dc) {
    }

    function onShow() {
    }

    function onUpdate(dc) {
        
        View.onUpdate(dc);
        var itemsToPrint = myDelegate.generateOutputItems();
        
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_RED);
        
        var y = VERTICAL_OFFSET;
        for (var x = 0; x < itemsToPrint.size(); x++){
        	dc.drawText(dc.getWidth()/2, y, FONT, itemsToPrint[x], Graphics.TEXT_JUSTIFY_CENTER);
        	y = y + FONT_HEIGHT;
        }
        
    }

    function onHide() {
    }
}
