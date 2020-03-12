const timer = 5000  
window.addEventListener('load',function(){
  if(this.document.URL.match("/problems/%23")){
    this.console.log('OK');
    setInterval('location.reload()',timer);
  }
});


