//to tackle the csrf token
var token = $('meta[name="_csrf"]').attr('content');
var header = $('meta[name="_csrf_header"]').attr('content');
debugger;
if (token.length > 0 && header.length > 0) {
	// set the token for the ajax request
	$(document).ajaxSend(function(e, xhr, options) {
		xhr.setRequestHeader(header, token);
	});
}