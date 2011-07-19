$(function () {  
  $(".token_field").each(function(){
   $(this).tokenInput(
    $(this).data('json-path'), { 
     minChars: 0, //doesn't work
     theme: 'facebook',
     preventDuplicates: true,
     prePopulate: $(this).data('pre')});
  });

});
