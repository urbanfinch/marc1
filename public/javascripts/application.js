// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var marc = {
  
  run: function() {
    
    $('ul.categories a').mouseover(function(event) {
      $('img.categories').attr('src', $(this).attr('data-image-url'));
    });
    
    $('ul.products a').mouseover(function(event) {
      $('img.products').attr('src', $(this).attr('data-image-url'));
    });
  }
  
};