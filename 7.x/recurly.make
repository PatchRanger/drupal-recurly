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

; Using GitHub repository, because I am not a maintainer of Recurly.
;; Download via git, because we don't want to wait while drupal.org builds a package.
;libraries[recurly][type] = module
;libraries[recurly][download][type] = git
;libraries[recurly][download][branch] = 7.x-1.x
;libraries[recurly][destination] = modules

; Dependencies.
projects[http_client][overwrite] = TRUE
projects[http_client][version] = 2.x-dev
projects[wsclient][overwrite] = TRUE
projects[wsclient][version] = 1.x-dev

; Patches.
projects[http_client][patch][] = "http://drupal.org/files/http_client-2042205-create_basic_http_auth_plugin-2.patch"
projects[wsclient][patch][] = "http://drupal.org/files/wsclient-fix-tester-soap-hardcode-1977060.patch"
