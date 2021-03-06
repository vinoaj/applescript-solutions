JsOsaDAS1.001.00bplist00�Vscript_#/**
 * @fileoverview Convert date string to YYYY-MM-DD format
 * @author vinoaj@vinoaj.com (Vinoaj Vijeyakumaar)
 */
app = Application.currentApplication();
app.includeStandardAdditions = true;


// Testing
// hazelMatchFile(null, ["14","Feb","2019"]);

/**
 * Pass input attributes in the following order:
 *   day
 *	 mon
 *   year 
 */ 
function hazelMatchFile(theFile, inputAttributes) {
	app.displayNotification("File Read", {
    	withTitle: "File processing debug",
    	subtitle: inputAttributes[1],
    	soundName: "Frog"
	});

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
 * @param {string} month 
 * @param {number} year 
 * @returns {Date}
 */
function dateStrToDateObj(day, month, year) {
    var monthShortStrs = ['jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec'];
	var monthShortStrsCaps = 
		['JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC'];
	var monthLongStrs = ['january','february','march','april','may','june','july','august','september','october','november','december'];
	
	month = month.toLowerCase();
	
	if (monthShortStrs.indexOf(month) > -1) {
		month = monthShortStrs.indexOf(month) + 1;
	} else if (monthShortStrsCaps.indexOf(month) > -1) {
		month = monthShortStrsCaps.indexOf(month) + 1; 
	} else if (monthLongStrs.indexOf(month) > -1) {
		month = monthLongStrs.indexOf(month) + 1;
	} else {
		month = 'Dec';
	}
		
    return new Date(year, month-1, day);
}

/**
 * Converts a Date object into its YYYY-MM-DD string representation
 * @param {Date} dateObj Date object to be converted
 * @returns {string} YYYY-MM-DD string representation of the date object
 */
function getDateStrYYYYMMDD(dateObj) {
    return dateObj.toISOString().split('T')[0];
}                              9 jscr  ��ޭ