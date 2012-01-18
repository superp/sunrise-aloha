Aloha.ready(function(){
  Aloha.checkContents = function(){
    var elements = $('[modified]');
    return elements.length == 0;
  }
  
  Aloha.modifiedContents = function(){
    var hash = {};
    
    $('[modified]').each(function(){
      var url = $(this).data('url');
      var name = $(this).attr('name');
      
      if (hash[url] === undefined || hash[url] === null) { 
        hash[url] = {};
      }
      
      hash[url][name] = $(this).html();
    });
    
    return hash;
  }
  
  Aloha.saveContents = function(){
    var hash = Aloha.modifiedContents();
    var options = {};

    $.each(hash, function(key, value) { 
      options = {
        url: key, type: 'PUT', data: value, dataType: 'json',
        success: function(data, status, xhr) {
          // TODO
        },
        complete: function(xhr, status) {
          // TODO
        },
        error: function(xhr, status, error) {
          // TODO
        }
      };
      
      $.rails.ajax(options);
    });
  }
    
  // save all changes after leaving an editable
  Aloha.require( ['aloha', 'aloha/jquery'], function( Aloha, jQuery) {
    Aloha.bind('aloha-smart-content-changed', function(event, data) {
      var editable = data.editable;
      
      if (editable.isModified()) {
        editable.obj.attr('modified', event.timeStamp);
        editable.setUnmodified();
      } else {
        return true;
      }
    });
  });
 
  // Enable aloha on elements with contenteditable attribute
  Aloha.jQuery('[contenteditable]').aloha();
  
  $(window).bind('beforeunload', Aloha.checkContents);
});
