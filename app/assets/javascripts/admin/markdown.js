previewMarkDown = function($form, $preview) {
  var md = $form.val();
  $preview.html(marked(md));
};
