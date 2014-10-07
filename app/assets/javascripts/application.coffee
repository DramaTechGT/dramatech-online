#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require moment
#= require codemirror
#= require codemirror/modes/ruby
#= require codemirror/modes/sass
#= require codemirror/modes/shell
#= require codemirror/modes/sql
#= require codemirror/modes/slim
#= require codemirror/modes/nginx
#= require codemirror/modes/markdown
#= require codemirror/modes/javascript
#= require codemirror/modes/http
#= require codemirror/modes/htmlmixed
#= require codemirror/modes/haml
#= require codemirror/modes/xml
#= require codemirror/modes/css
#= require codemirror/modes/yaml
#= require codemirror/modes/slim
#= require codemirror/modes/php
#= require summernote
#= require bootstrap-datetimepicker
#= require_tree .

$(document).ready ->
  $("#menu-toggle").click (e) ->
        e.preventDefault()
        $("#wrapper").toggleClass("active")
  $('#flashed-alert').delay(2000).fadeOut(400);
  window.modal = $('#modal')
  $('body').on 'click', "a.modal-link", (e) ->
    e.preventDefault()
    url = $(e.target).closest('a').prop('href')
    modalContent = $('#modal-content')
    modalLoading = $('#modal-loading')

    modalLoading.removeClass('hidden')
    modalContent.addClass('hidden')

    window.modal.modal()

    modalContent.load url, (response, status, xhr) ->
      modalLoading.addClass('hidden')
      if ('success' == status)
        modalContent.removeClass('hidden')
      else
        modalContent.html("
          <div class='modal-header'>
            <button class='close' data-dismiss='modal'>
              <i class='fa fa-times'></i>
            </button>
            <h2>Error Loading Data</h2>
          </div>
          <div class='modal-body'>
            <p>Seems like our honeycomb is being attacked by those UGA Bulldogs again... Try reloading the page, or contact
            <a href='mailto:support@dramatech.org'>DramaTech Web Services</a>. If the issue does not resolve,
             we'll send a team of Yellow Jackets to destroy them.
          </div>
          <div class='modal-footer'>
            <button class='btn btn-primary' data-dismiss='modal'>
              Close
            </button>
          </div>
          ").removeClass('hidden')