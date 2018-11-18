$(function(){
 //remodal発火関数
 var fireRemodal = function(targetID){
   if(document.getElementById(targetID) != null){
     $('#'+targetID).remodal();
   }
 };
 fireRemodal('js-user-register');
});

$(function() {
  // カテゴリを全て見る機能
  $('#show_categories').click(function() {
    $('.accordion').slideDown();
  });
});
