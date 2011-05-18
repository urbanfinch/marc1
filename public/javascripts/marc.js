/* Marc */

var marc = {
  
  run: function() {
    
    $('ul#categories a').mouseover(function(event) {
      $('img.categories').attr('src', $(this).attr('data-image-url'));
    });
    
    $('ul#products a').mouseover(function(event) {
      $('img.products').attr('src', $(this).attr('data-image-url'));
    });
  }
  
};