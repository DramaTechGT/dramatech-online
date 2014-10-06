# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  summer_note = $('#summernote-wysiwyg-editor')
  summer_note.summernote
    height:500

  $('.form_datetime').datetimepicker({
    autoclose: true,
    todayBtn: true,
    pickerPosition: "bottom-left",
    format: 'YYYY-MM-DD H:mm:ss Z'
  });