window.onload = function() {

  // 要素を取得
  var editorTA = document.querySelector('.editor .ta');
  var previewTA = document.querySelector('.preview .ta');

  var sync = function() {
      var value = editorTA.value; // テキストエリアから値を取得
      var md = marked(value); // マークダウンに変換
      document.getElementById("hello").innerHTML = md;
      previewTA.value = md; // プレビューにぶっこむ
      console.log(md); // コンソールにも出しとく
  };

  // ブラー時に変換する
  editorTA.onblur = sync;

  // 一回やっとく
  sync();
};
