JsOsaDAS1.001.00bplist00�Vscript_(/**
 * Creates a new Evernote note and open it on the current screen
 */

var evernote = Application("Evernote");

var noteTitle = new Date().toISOString();

var newNote = evernote.createNote({
	withText: ' ',
	title: noteTitle
});

evernote.openNoteWindow({ with: newNote })
evernote.activate();                              >jscr  ��ޭ