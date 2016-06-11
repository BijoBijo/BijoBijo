$(function(){
  $('#title-js').on('keyup', function() {
    var title = $.trim($(this).val());
    $('#preview-title-js').html(title);
  });

  $('#content-js').on('keyup', function() {
    var content = $.trim($(this).val());
    var htmlContent = marked(content);
    $('#preview-content-js').html(htmlContent);
  });
});
