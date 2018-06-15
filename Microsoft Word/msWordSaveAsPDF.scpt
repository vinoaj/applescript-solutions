JsOsaDAS1.001.00bplist00�Vscript_�/**
 * @fileoverview Save active MS Word document as a PDF file
 * @author vinoaj@vinoaj.com (Vinoaj Vijeyakumaar)
 */

app = Application.currentApplication();
app.includeStandardAdditions = true;

var msWord = Application("Microsoft Word");
var windows = msWord.windows;
var activeDoc = null;

for (var i = 0, l = windows.length; i < l; i++) {
	var window = windows[i];
	if (window.index() == 1) {
		// console.log(window.name());
		activeDoc = window.document;
	}
}

var docPath = activeDoc.path();
var fileName = activeDoc.name();

msWord.saveAs(activeDoc, {
    fileName: docPath + ":" + fileName + ".pdf",
	fileFormat: "format PDF"
});                              �jscr  ��ޭ