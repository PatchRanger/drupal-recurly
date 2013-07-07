; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
core = 7.x
; API version
; ------------
; Every makefile needs to declare it's Drush Make API version. This version of
; drush make uses API version `2`.
api = 2

; Libraries.
libraries[recurly][download][type] = "get"
libraries[recurly][download][url] = "http://github.com/recurly/recurly-client-php/archive/master.zip"
libraries[recurly][directory_name] = recurly
libraries[recurly][destination] = libraries
