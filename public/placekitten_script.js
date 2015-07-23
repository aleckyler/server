

var main = function() {
  console.log("main active")
  $('.image').mouseover(function() {
    var h = Math.floor(Math.random()*1000);
    var w = Math.floor(Math.random()*1000);
    var url = '<img class="kitten" src="http://placekitten.com/g/'+h+'/'+w+'" />'
    console.log(h, w, url)
    console.log("mouseover")
    $('.kitten').replaceWith(url)
    // $('.kitten').attr('src')=(url)
  });
};

$(document).ready(main);
