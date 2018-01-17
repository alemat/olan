$(function(){
  $('#ethiopian_calendar').calendarsPicker($.extend({calendar: $.calendars.instance('ethiopian', 'am')},
    $.calendarsPicker.regionalOptions['am']));
  $('html').scrollTop(0);
  $('body').scrollTop(0);
});

