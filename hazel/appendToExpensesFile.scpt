JsOsaDAS1.001.00bplist00�Vscript_/**
 * @fileoverview Append text file
 * @author vinoaj@vinoaj.com (Vinoaj Vijeyakumaar)
 */
app = Application.currentApplication();
app.includeStandardAdditions = true;


/**
 * Pass input attributes in the following order:
 *   output file path
 *   date in YYYY-MM-DD format
 *   total
 *	 currency
 *   category
 *   note
 */
function hazelProcessFile(theFile, inputAttributes) {
	var outfile = inputAttributes[0];
	var ymd = inputAttributes[1];
	var total = inputAttributes[2];
	var currency = inputAttributes[3];
	var category = inputAttributes[4].replace(">","\\>");
	var note = inputAttributes[5] || "";
	
	var expStr = [ymd,currency,total,"",category,note].join(',');
	app.doShellScript("echo " + expStr + " >> " + outfile);
	
	delay(3);
}



/*
set ymd to item 1 of inputAttributesset total to item 2 of inputAttributesset category to the quoted form of "Income > Wages"set expStr to ymd & ",AUD," & total & ",," & category & ",Aurec"do shell script "echo " & expStr & " >> ~/Dropbox/Downloads/expenses.txt"
*/                               jscr  ��ޭ