class ListItem {

	var name = null;
	var description = null;
	var catagory = null;
	
	function initialize(inName){
		name = inName;
	}
	
	function setName(inName){
		name = inName;
	}
	
	function setDescription(inDesc){
		description = inDesc;
	}
	
	function setCatagory(inCat){
		catagory = inCat;
	}
	
	function getName(){
		return name;
	}

}