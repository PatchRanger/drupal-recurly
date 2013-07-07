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
;libraries[moopapi][type] = module
;libraries[moopapi][download][type] = git
;libraries[moopapi][download][branch] = 7.x-2.x
;libraries[moopapi][destination] = modules

; Dependencies.
projects[clients][overwrite] = TRUE
projects[clients][version] = 3.x-dev
projects[entity][overwrite] = TRUE
projects[entity][version] = 1.x-dev
projects[libraries][overwrite] = TRUE
projects[libraries][version] = 3.x-dev
projects[remote_entity][overwrite] = TRUE
projects[remote_entity][version] = 1.x-dev
