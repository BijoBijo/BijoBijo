ajaxSaveImage = function(e, file_name, $form) {
  $.ajax({
    type: 'POST',
    url: '/admin/images',
    dataType: 'json',
    data: {
      uri_str: e.target.result,
      name: file_name,
      status: 'article'
    }
  }).done(function(data) {
    surrondByMark('image', $form, data.url);
  }).fail(function() {
    alert('画像のアップロードに失敗しました');
  });
};
