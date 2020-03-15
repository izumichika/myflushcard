// var count = 7;
// window.addEventListener('load',function(){
//   if(this.document.URL.match("/problems/%23")){
//     this.console.log('OK');

//     var countdown = function(){
//       document.getElementById('timer').textContent = count.toString();
//       console.log(count--);
//       var id = setTimeout(countdown, 7000);
//       if(count < 0){
//         clearTimeout(id);
//       }
//     }
//     countdown();

//     setInterval('location.reload()',count);
//   }
// });


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