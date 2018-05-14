//= require jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(function () {
  $(document).on('change', '.remote-select', function (e) {
    var url = $(this).find(':selected').attr('data-url')
    var target = $(this).attr('data-target')

    if (url) {
      $.ajax({
        url: url,
        method: 'GET',
        success: function (json) {
          var target_select = $(target)
          target_select.empty()
          json.map(function (item) {
            value = $('<option></option>').attr('value', item.id).text(item.name)
            target_select.append(value)
          })
          // target_select.trigger('chosen:updated')
        },
        error: function () {}
      })
    }
  })
})