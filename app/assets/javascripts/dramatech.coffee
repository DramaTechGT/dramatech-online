class window.DramaTech
  # Fix for Turbolinks
  @sidenav = ->
    $("#wrapper").toggleClass('active')

  # Load widespread JS events
  @initialize = ->
    @easyBoostrapModals()
    @fadingAlerts()
    @summernoteBinder()

  @easyBoostrapModals = ->
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
              <p>Seems like our honeycomb is being attacked by those UGA Bulldogs again... Try reloading the page,
               or contact <a href='mailto:support@dramatech.org'>DramaTech Web Services</a>. If the issue does not
               resolve, we'll send a team of Yellow Jackets to destroy them.
            </div>
            <div class='modal-footer'>
              <button class='btn btn-primary' data-dismiss='modal'>
                Close
              </button>
            </div>
            ").removeClass('hidden')
  @summernoteBinder = ->
    summer_note = $('#summernote-wysiwyg-editor')
    summer_note.summernote
      height:500

    $('.form_datetime').datetimepicker({
      autoclose: true,
      todayBtn: true,
      pickerPosition: "bottom-left",
      format: 'YYYY-MM-DD H:mm:ss Z'
    });
  @fadingAlerts = ->
    $('#flashed-alert').delay(2000).fadeOut(400)