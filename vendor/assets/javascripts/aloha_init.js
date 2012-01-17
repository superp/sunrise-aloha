var GENTICS_Aloha_base = '/assets/aloha/';

//= require aloha/aloha

//= require aloha/plugins/common/format/lib/format-plugin
//= require aloha/plugins/common/paste/lib/paste-plugin
//= require aloha/plugins/common/link/lib/link-plugin
//= require aloha/plugins/common/link/extra/linklist
//= require aloha/plugins/common/link/extra/slowlinklist
//= require aloha/plugins/common/list/lib/list-plugin
//= require aloha/plugins/common/table/lib/table-plugin
//= require aloha/plugins/common/highlighteditables/lib/highlighteditables-plugin
//= require aloha/plugins/common/abbr/lib/abbr-plugin
//= require aloha/plugins/common/image/lib/image-plugin
//= require aloha/plugins/common/undo/lib/undo-plugin


$(function(){
  $('[contenteditable]').aloha();
});
