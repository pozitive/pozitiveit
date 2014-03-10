// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(function() {
    $(document).foundation();
});


var switch_button = function(button) {
    $('.switch').addClass( 'basic');
    $(button).removeClass( 'basic');
}
var send_message = function(data) {
    if (data == 'button-kick-project') {
	$('#phone').removeClass('hide');
	$('#company').removeClass('hide');
	$('#extra').removeClass('hide');
	$('#idea').removeClass('hide');
	$('#type').addClass('hide');
    } else if (data == 'button-hire-us') {
	$('#phone').removeClass('hide');
	$('#company').removeClass('hide');
	$('#extra').addClass('hide');
	$('#idea').addClass('hide');
	$('#type').removeClass('hide');
    } else {
	$('#phone').addClass('hide');
	$('#company').addClass('hide');
	$('#extra').addClass('hide');
	$('#idea').addClass('hide');
	$('#type').addClass('hide');
    }
    switch_button('#' + data);
}

$('a.smooth').click(function(){
    $('html, body').animate({
        scrollTop: $( $.attr(this, 'href') ).offset().top
    }, 500);
    return false;
});

// $('#button-kick-project').on('click', function(e){
//     send_message('button-kick-project');
// });
// $('#button-hire-us').on('click', function(e){
//     send_message('button-hire-us');
// });
// $('#button-send-message').on('click', function(e){
//     send_message('button-send-message');
// });
$('.switch').on('click', function(){
    var data = $(this).data('action');
    send_message(data);
    console.log(data);
});


