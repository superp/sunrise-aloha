(function( window, undefined ){
  var Aloha = window.Aloha || ( window.Aloha = {} );
  var lang = $('html[lang]').attr('lang') || "en";

  Aloha.settings = {
    jQuery: $,
    baseUrl: '/assets/aloha/',
    logLevels: { 'error': true, 'warn': true, 'info': true, 'debug': false, 'deprecated': true },
		errorhandling: false,
		ribbon: false,
		locale: lang,
    plugins: {
      load: "common/format, common/table, common/list, common/link, common/highlighteditables, common/block, common/undo, common/contenthandler, common/paste, common/commands, common/abbr, common/image, extra/browser, extra/linkbrowser"
    }
  };
})( window );
