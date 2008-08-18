// Comment written by Arkasha (Christian FERRARIO) chris_ferrario@hotmail.com
// I have NOT written this code although I have modified it.
// I've been using this script for so long I don't remember where I got it from


var W3CDOM = (document.createElement && document.getElementsByTagName);

addEvent(window, 'load', initCollapsingRows);

// This is the path to the images relative to the HTML file
// Ex. If your HTML file is at /files/Index.html
//     and your JavaScript and images are in /files/collapsible/
//     then the path here would be "collapsible/" 
var pathToImages = "img/";

function addEvent(obj, eventType, fn, useCapture)
{
	if (obj.addEventListener) {
		obj.addEventListener(eventType, fn, useCapture);
		return true;
	} else {
		if (obj.attachEvent) {
			var r = obj.attachEvent("on" + eventType, fn);
			return r;
		}
	}
}

// this function is needed to work around 
// a bug in IE related to element attributes
function hasClass(obj) {
   var result = false;
   if (obj.getAttributeNode("class") != null) {
       result = obj.getAttributeNode("class").value;
   }
   return result;
}  

function insertExtraCells(theTable) {

    // get reference to all of the tbody's, thead's, and tfoot's
    var tbodies = theTable.getElementsByTagName('tbody');
    var theads = theTable.getElementsByTagName('thead');
    var tfoots = theTable.getElementsByTagName('tfoot');

    insertInto(theads, 'th');
    insertInto(tbodies, 'td');
    insertInto(tfoots, 'td');    
    
}

function insertInto(parentCollections, typeOfCell) {
    // loop through all of the parent collections passed in
    for (var m = 0; m < parentCollections.length; m++) {

        // get all of the rows for each collection
        var trs = parentCollections[m].getElementsByTagName('tr');
        
        // loop through each of the rows
        for (i=0;i<trs.length;i++) {
            // create a new cell
            var theNewCell = document.createElement(typeOfCell);
            
            // insert the new cell before the first child
            var cells = trs[i].getElementsByTagName(typeOfCell);
            trs[i].insertBefore(theNewCell, cells[0]);
        }
    }
}

function toggleVisibility() {

    var theImage = this;
    //alert(this.id);
    var theRowName = this.id.replace('_image', '_comment');
	
    var theRow = document.getElementById(theRowName);
    
    if (theRow.style.display=="none") {
        theRow.style.display = "";
        theImage.src = pathToImages + "Collapse.gif";
    } else {
        theRow.style.display = "none";
        theImage.src = pathToImages + "Expand.gif";
    }
}

function initCollapsingRows()
{
	if (!W3CDOM) return;


    // the flag we'll use to keep track of 
    // whether the current row is odd or even
    var even = true;  

    // get a list of all the tables
    var tables = document.getElementsByTagName('table');

    // if there aren't any tables exit
    if (tables.length==0) { return; }

	var col = 0;
    // and iterate through them...
    for (var k = 0; k < tables.length; k++) {
        
        // if the table has a class
        if (hasClass(tables[k])) {
            
            // if that class is "collapsible"
            if (tables[k].getAttributeNode('class').value.indexOf('collapsible')!=-1) {
                			
                // since we are adding a graphic for expanding and collapsing
                // the rows in the first column of the table, we need to add
                // an extra column everywhere
                insertExtraCells(tables[k]);

                var tbodies = tables[k].getElementsByTagName('tbody');
                
                // iterate through the bodies...
                for (var h = 0; h < tbodies.length; h++) {
          
                    // find all the &lt;tr&gt; elements... 
                    var trs = tbodies[h].getElementsByTagName('tr');
    
                    // ... and iterate through them
                    
                    for (var i = 0; i < trs.length; i++) {

                        if (i%2==0) {
                            // Get a reference to the TD's
                            var td = trs[i].getElementsByTagName('td')[0];
     
                            // Assign a related unique ID to the next row where the comment is
                            // This is the row that will be expanded and collapsed
                            var theRowName = "row_" + col + "_comment"; 
                            //alert(theRowName);
                            trs[i+1].id = theRowName; 
                            trs[i+1].style.display = "none";
    						
                            // Create the new image object
                            var theNewImage = document.createElement('img');
                            var theNewImageName = "row_" + col + "_image";
                            theNewImage.id = theNewImageName;
                            theNewImage.src = pathToImages + "Expand.gif";
                            theNewImage.width = 13;
                            theNewImage.height = 13;
                            theNewImage.style.margin = "3px";
                            theNewImage.style.cursor = "pointer";
                            
                            // Add "onclick" event to the image that expands and collapses the next row
                            theNewImage.onclick = toggleVisibility;
    
                            // Insert an image into the document tree inside the first TD
                            td.appendChild(theNewImage);
                            td.style.width="1%"
   
                            // Skip the collapsbile row
                            i++;
                            col+=2;
                        }
                    }
                }
            }
        } 
        // Reset "even" for the next table
        even = true;
    } // End for loop  
}
