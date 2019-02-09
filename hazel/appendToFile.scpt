JsOsaDAS1.001.00bplist00�Vscript_�/**
 * @fileoverview Append input variables to text file
 * @author vinoaj@vinoaj.com (Vinoaj Vijeyakumaar)
 */
app = Application.currentApplication();
app.includeStandardAdditions = true;


/**
 * Pass input attributes in the following order:
 *   - output file path
 *   - field values in the order they should appear in the file
 */
function hazelProcessFile(theFile, inputAttributes) {
	var outfile = inputAttributes[0];
	var fieldVals = inputAttributes.slice(1,)
	
	fieldVals = fieldVals.map(function(element,index) {
		return element.replace(">","\\>").replace(/,/gi, "\\,");
	});
	
	rowStr = fieldVals.join(',');
	app.doShellScript("echo " + rowStr + " >> " + outfile);
	
	delay(3);
}
                              �jscr  ��ޭ