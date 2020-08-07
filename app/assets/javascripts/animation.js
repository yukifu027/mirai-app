// $(function() {
//   // ハッシュリンク(#)と別ウィンドウでページを開く場合は実行しない
//   $('a:not([href^="#"]):not([target])').on('click', function(e){
//     e.preventDefault();         // ページ遷移を一旦キャンセル
//     url = $(this).attr('href'); // 遷移先のURLを取得

//     if (url !== '') {
//       $('body').addClass('is-slide-in'); // 画面遷移前のアニメーション is-slide-in
      
//       setTimeout(function () {
//         window.location = url;  // 0.8秒後に取得したURLに遷移
//       }, 800);
//     }
//     return false;
//   });

//   // 画面が読み込まれた時、is-slideを外し、アニメーションさせる
//   $(window).on('load', function(){
//     $('body').removeClass('is-slide-in');
//   });
// });

$(function() {
  // ハッシュリンク(#)と別ウィンドウでページを開く場合は実行しない
  $('a:not([href^="#"]):not([target])').on('click', function(e){
    e.preventDefault();         // ページ遷移を一旦キャンセル
    url = $(this).attr('href'); // 遷移先のURLを取得
    if(isAuthLink(url))return true;
    if (url !== '') {
      $('body').addClass('is-slide-in'); // 画面遷移前のアニメーション is-slide-in
      
      setTimeout(function () {
        window.location = url;  // 0.8秒後に取得したURLに遷移
      }, 800);
    }
    return false;
  });
  // 画面が読み込まれた時、is-slideを外し、アニメーションさせる
  $(window).on('load', function(){
    $('body').removeClass('is-slide-in');
  });

  let isAuthLink = function(url){
    let m = url.match(/users\/auth\/(facebook|google_oauth2)/);
    if(!m) return false;
    let p = m[1];
    switch (p) {
      case 'facebook':
        return true;
      case 'google_oauth2':
        return true;
      default:
        return false;
    }
  }

  let isAuthLinkTest = function(){
    console.log(isAuthLink('/users/auth/facebook') == true);
    console.log(isAuthLink('/users/auth/google_oauth2') == true);
    console.log(isAuthLink('/users/') == false);
    console.log(isAuthLink('/users/auth/google') == false);
  }
  isAuthLinkTest();
});
