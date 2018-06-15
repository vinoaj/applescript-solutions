JsOsaDAS1.001.00bplist00�Vscript_/**
 * @fileoverview Save active MS Word document as a PDF file
 * @author vinoaj@vinoaj.com (Vinoaj Vijeyakumaar)
 */

app = Application.currentApplication();
app.includeStandardAdditions = true;

var msWord = Application("Microsoft Word");
// var kmEng = Application("Keyboard Maestro Engine");

var activeDoc = msWord.activeDocument;
var docPath = activeDoc.path();
var fileName = activeDoc.name();
var newFileName = docPath + ":" + fileName + ".pdf"

msWord.saveAs(activeDoc, {
    fileName: newFileName,
	fileFormat: "format PDF"
});                              0jscr  ��ޭ