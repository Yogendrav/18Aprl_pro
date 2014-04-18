$(document).ready(function(){
  completed: function(e, data) {
    console.log(data.result[0].url);
    $('a[href^="' + data.result[0].url + '"]').slimbox();
  },
})