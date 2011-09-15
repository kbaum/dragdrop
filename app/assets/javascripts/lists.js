$(function () {
  $('#list_items').sortable( { update: function() {
    $.ajax({
      type: "POST",
      url: '/list_items/position?' + $(this).sortable('serialize'),
      data: { _method: 'PUT'}
    });
  }
  });    

});
