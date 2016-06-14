surrondByMark = function(type, $form, data='') {
  var leftMark = mark(type, 'left');
  var rightMark = mark(type, 'right');

  if (type == 'image') {
    $form.selection(
      'insert',
      {
        text: leftMark + data + rightMark,
        mode: 'before'
      });
  } else {
    $form.selection('insert', { text: leftMark, mode: 'before' })
         .selection('insert', { text: rightMark, mode: 'after' });
  }
};

mark = function(type, pos) {
  var markSet = {
    left:{
      bold: '**',
      italic: '*',
      link: '[表示文言を入力してください](',
      image: '![ALTを入力してください](',
      strikethrough: '~~'
    },
    right:{
      bold: '**',
      italic: '*',
      link: ')',
      image: ')',
      strikethrough: '~~'
    }
  };
  return markSet[pos][type];
};

previewDropPedImage = function($form, $preview) {
  $form.on('dragenter', function(e) {
    e.preventDefault();
  }).on('dragover', function(e) {
    e.preventDefault();
  }).on('drop', function(e) {
    e.preventDefault();
    let files = e.originalEvent.dataTransfer.files;
    let $this = $(this);
    let md = $this.val();

    for (let i = 0; i < files.length; i++) {
      if (files[i].type.match(/image.*/)) {
        let reader = new FileReader;
        reader.onload = function(e) {
          ajaxSaveImage(e, files[i].name, $this);
        };
        reader.readAsDataURL(files[i]);
      }
    }
  });
  previewMarkDown($form, $preview);
};
