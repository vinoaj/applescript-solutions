JsOsaDAS1.001.00bplist00�Vscript_�/**
 * @fileoverview Add file to Evernote
 * @author vinoaj@vinoaj.com (Vinoaj Vijeyakumaar)
 */

/*
app = Application.currentApplication();
app.includeStandardAdditions = true;
	
app.displayNotification("File Read", {
   	withTitle: "File processing debug",
   	subtitle: "Starting...",
   	soundName: "Frog"
});
*/


/**
 * Pass input attributes in the following order:
 *   Target notebook
 *   Tags
 */
function hazelProcessFile(theFile, inputAttributes) {
	var evernote = Application("Evernote");
	
	var targetNotebook = inputAttributes[0] || "!Inbox";
	var tagList = inputAttributes.slice(1,);
	
	evernote.createNote({
		fromFile: theFile,
		notebook: targetNotebook,
		tags: tagList,
	});
	
	delay(3);
	
	return {
		hazelPassesScript: true
	};
}
                               jscr  ��ޭ