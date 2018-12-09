JsOsaDAS1.001.00bplist00�Vscript_	/**
 * @fileoverview Convert date string to YYYY-MM-DD format
 * @author vinoaj@vinoaj.com (Vinoaj Vijeyakumaar)
 */
app = Application.currentApplication();
app.includeStandardAdditions = true;
/**
 * Pass input attributes in the following order:
 *   day
 *	 mon
 *   year 
 */
function hazelMatchFile(theFile, inputAttributes) {
	/* app.displayNotification("File Read", {
    	withTitle: "File processing debug",
    	subtitle: inputAttributes[1],
    	soundName: "Frog"
	}); */

	var day = parseInt(inputAttributes[0]);
	var mon = inputAttributes[1];
    var year = parseInt(inputAttributes[2]);
    
    var strYYYYMMDD = getDateStrYYYYMMDD(dateStrToDateObj(day, mon, year));

    return {
	    'hazelPassesScript': true,
        'hazelOutputAttributes': [strYYYYMMDD]
    };
}


/**
 * Takes day, month, and year values and converts it into a Date object
 * @param {number} day 
 * @param {number} month 
 * @param {number} year 
 * @returns {Date}
 */
function dateStrToDateObj(day, month, year) {
    var monthShortStrs = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
	var monthLongStrs = ['January','February','March','April','May','June','July','August','September','October','November','December'];
	
	
	if (monthShortStrs.indexOf(month) > -1) {
		month = month;
	} else if (monthLongStrs.indexOf(month) > -1) {
		month = monthLongStrs.indexOf(month) + 1;
	} else {
		month = 'Dec';
	}
		
    return new Date(Date.parse(day + ' ' + month + ', ' + year + ' GMT+1000'));
}

/**
 * Converts a Date object into its YYYY-MM-DD string representation
 * @param {Date} dateObj Date object to be converted
 * @returns {string} YYYY-MM-DD string representation of the date object
 */
function getDateStrYYYYMMDD(dateObj) {
    return dateObj.toISOString().split('T')[0];
}                               jscr  ��ޭ