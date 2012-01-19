root = this
$ = jQuery

Aloha.ready ->
  Aloha.checkContents = ->
    elements = $ '[modified]'
    "Modified " + elements.length + " contents"
  
  Aloha.modifiedContents = (hash = {}) ->
    $('[modified]').each ->
      url = $(this).data('url')
      name = $(this).attr('name')
      
      hash[url] ?= {}
      hash[url][name] = $(this).html()
    
    hash
  
  Aloha.saveContents = (options = {}) ->
    hash = Aloha.modifiedContents()
    defaults =
      type: 'PUT'
      dataType: 'json'
      success: (data, status, xhr) ->
      complete: (xhr, status) ->
      error: (xhr, status, error) ->
      
    options = $.extend defaults, options
    
    $.each hash, (key, value) ->
      options['url'] = key
      options['data'] = value
      
      $.rails.ajax(options)
  
  # Save all changes after leaving an editable
  Aloha.require ['aloha', 'aloha/jquery'], ( Aloha, jQuery) ->
    Aloha.bind 'aloha-smart-content-changed', (event, data) ->
      editable = data.editable;
      
      if editable.isModified()
        editable.obj.attr('modified', event.timeStamp)
        editable.setUnmodified()
        
        $(window).unbind('beforeunload.aloha')
        $(window).bind('beforeunload.aloha', Aloha.checkContents)
      else
        true
      
 
  # Enable aloha on elements with contenteditable attribute
  Aloha.jQuery('[contenteditable]').aloha()
