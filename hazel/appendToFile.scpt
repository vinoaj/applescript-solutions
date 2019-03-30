JsOsaDAS1.001.00bplist00�Vscript_�/**
 * @fileoverview Append input variables to text file
 * @author vinoaj@vinoaj.com (Vinoaj Vijeyakumaar)
 */
app = Application.currentApplication();
app.includeStandardAdditions = true;


// hazelProcessFile("x",["~/Dropbox/Downloads/a.txt","2019-03-18", "AUD", "Buy", "ASX", "b","c,d","e > f", "x & y", "9.50"]);

/**
 * Pass input attributes in the following order:
 *   - output file path
 *   - field values in the order they should appear in the file
 */
function hazelProcessFile(theFile, inputAttributes) {
	var outfile = inputAttributes[0];
	var fieldVals = inputAttributes.slice(1,);
	
	var vals = fieldVals.map(function(element,index) {
		var el = element;
		
		try {
			el = element.replace(">","\\>");
			el = el.replace(/,/gi, "\\,");
		} catch(err) {
			el = "";
		}
		
		return el;
	});
	
	rowStr = vals.join(',');
	app.doShellScript("echo \"" + rowStr + "\" >> " + outfile);
	
	delay(3);
}
                              � jscr  ��ޭ