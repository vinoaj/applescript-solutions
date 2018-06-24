JsOsaDAS1.001.00bplist00�Vscript_`/**
 * @fileoverview Append text file
 * @author vinoaj@vinoaj.com (Vinoaj Vijeyakumaar)
 */

/**
 * Pass input attributes in the following order:
 *   output file path
 *   date in YYYY-MM-DD format
 *	 currency
 *   category
 *   note
 */
function hazelProcessFile(theFile, inputAttributes) {
	var outfile = inputAttributes[0];
	var ymd = inputAttributes[1];
	var currency = inputAttributes[2];
	var category = inputAttributes[3];
	var note = inputAttributes[4] || "";
	
	var expStr = [ymd,'AUD',total,"",category,note].join(',');
	doShellScript("echo " + expStr + " >> " + outfile);
}



/*
set ymd to item 1 of inputAttributesset total to item 2 of inputAttributesset category to the quoted form of "Income > Wages"set expStr to ymd & ",AUD," & total & ",," & category & ",Aurec"do shell script "echo " & expStr & " >> ~/Dropbox/Downloads/expenses.txt"
*/                              vjscr  ��ޭ