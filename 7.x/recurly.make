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

; Sandbox of wsclient_views.
libraries[wsclient_views][type] = module
libraries[wsclient_views][download][type] = git
libraries[wsclient_views][download][url] = http://git.drupal.org/sandbox/wesnick/1437134.git
libraries[wsclient_views][download][branch] = 7.x-1.x
libraries[wsclient_views][destination] = modules

; Dependencies.
projects[http_client][overwrite] = TRUE
projects[http_client][version] = 2.x-dev
projects[wsclient][overwrite] = TRUE
projects[wsclient][version] = 1.x-dev

; Patches.
projects[http_client][patch][] = "http://drupal.org/files/http_client-2042205-create_basic_http_auth_plugin-2.patch"
; Committed.
;projects[wsclient][patch][] = "http://drupal.org/files/wsclient-fix-tester-soap-hardcode-1977060.patch"
projects[wsclient][patch][] = "http://drupal.org/files/wsclient-1285310-http_basic_authentication-14.patch"
; Replaced by below.
;projects[wsclient][patch][] = "http://drupal.org/files/wsclient-2044587-avoid_empty_remaining_parameters_inside_request_uri-1.patch"
projects[wsclient][patch][] = "http://drupal.org/files/wsclient_rest-request_alter_commented-1934274.patch"
; Patch is necessary, though it couldn't be applied such way.
;projects[wsclient_views][patch][] = "http://drupal.org/files/wsclient_views-2044669-recover_workability-2.patch"
