root = this
$ = jQuery

Aloha = window.Aloha ?= {}
lang = ($ 'html[lang]').attr('lang') or "en"

Aloha.settings =
  jQuery: $
  baseUrl: '/assets/aloha/'
  logLevels:
    'error': true
    'warn': true
    'info': true
    'debug': false
    'deprecated': true
  errorhandling: false
  ribbon: false
  locale: lang
  plugins:
    load: "common/format, common/table, common/list, common/link, common/highlighteditables, common/block, common/undo, common/contenthandler, common/paste, common/commands, common/abbr, common/horizontalruler"
