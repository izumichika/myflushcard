$(document).ready(function(){
  $(window).bind("load", function(){
    if(document.URL.match("/problems/%23")){
      $(function(){
        cnt = 7;
        $('#timer').text(cnt);
        cnDown = setInterval(function(){
          cnt--;
          if(cnt <= 0){
            clearInterval(cnDown);
          }
          $('#timer').text(cnt);
        },1000);
        // setInterval('location.reload()',cnt);
      });
      setTimeout('location.reload()',7000);
    }
  });
});