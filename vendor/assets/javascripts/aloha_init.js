Aloha.ready(function(){
  // save all changes after leaving an editable
  Aloha.require( ['aloha', 'aloha/jquery'], function( Aloha, jQuery) {
    Aloha.bind('aloha-editable-deactivated', function(){
      var content = Aloha.activeEditable.getContents();
      var contentId = Aloha.activeEditable.obj[0].id;
      var pageId = window.location.pathname;

      // textarea handling -- html id is "xy" and will be "xy-aloha" for the aloha editable
      if ( contentId.match(/-aloha$/gi) ) {
        contentId = contentId.replace( /-aloha/gi, '' );
      }

      jQuery.ajax({
        url: "save.php",
        type: "POST",
        data: {
          content : content,
          contentId : contentId,
          pageId : pageId
        },
        dataType: "html"
      });
    });
  });
 
  // Enable aloha on elements with contenteditable attribute
  Aloha.jQuery('[contenteditable]').aloha();
});
