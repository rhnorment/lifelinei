// HIDE FLASH MESSAGES

$(document).ready(function() {
    setTimeout(hideFlashes, 15000);
});

var hideFlashes = function() {
    $('.message_green, .message_red, .message_yellow, .message_blue').fadeOut(1500);
}

