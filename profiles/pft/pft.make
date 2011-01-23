; Project Flow & Tracker Installation Profile Makefile
;
; All files hosted at http://code.projectflowandtracker.com
;
; To run, 
;   create a makefile called, say, pft_build.make and run it with drush make:

;  core = 6.x
;
;  api = 2
;  projects[drupal][version] = "6.20"

;  ; PFT Installation Profile
;  projects[pft][type] = "profile"
;  projects[pft][download][type] = "get"
;  projects[pft][download][url] = http://code.projectflowandtracker.com/pft_profile.tgz
;  projects[pft][version] = 1.0-alpha1
; 

core = 6.x

api = 2
projects[drupal][version] = "6.20"

; Modules
projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = "1.6"

projects[adminrole][subdir] = "contrib"
projects[adminrole][version] = "1.3"

projects[advanced_help][subdir] = "contrib"
projects[advanced_help][version] = "1.2"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.8"

projects[date][subdir] = "contrib/date"
projects[date][version] = "2.7"

projects[diff][subdir] = "contrib"
projects[diff][version] = "2.1"

projects[filefield][subdir] = "contrib"
projects[filefield][version] = "3.9"

projects[filefield_sources][subdir] = "contrib"
projects[filefield_sources][version] = "1.2"

projects[globalredirect][subdir] = "contrib"
projects[globalredirect][version] = "1.2"

projects[imageapi][subdir] = "contrib"
projects[imageapi][version] = "1.9"

projects[imagecache][subdir] = "contrib"
projects[imagecache][version] = "2.0-beta10"

projects[imagefield][subdir] = "contrib"
projects[imagefield][version] = "3.9"

projects[install_profile_api][subdir] = "contrib"
projects[install_profile_api][version] = "2.1"

projects[jquery_ui][subdir] = "contrib"
projects[jquery_ui][version] = "1.4"

projects[jquery_update][subdir] = "contrib"
projects[jquery_update][version] = "2.0-alpha1"

projects[login_destination][subdir] = "contrib"
projects[login_destination][version] = "2.12"

projects[nodereference_url][subdir] = "contrib"
projects[nodereference_url][version] = "1.6"

projects[og][subdir] = "contrib"
projects[og][version] = "2.1"

projects[panels][subdir] = "contrib"
projects[panels][version] = "3.8"

projects[panels_everywhere][subdir] = "contrib"
projects[panels_everywhere][version] = "1.1"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.5"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[taxonomy_export][subdir] = "contrib"
projects[taxonomy_export][version] = "2.x-dev"

projects[token][subdir] = "contrib"
projects[token][version] = "1.15"

projects[vertical_tabs][subdir] = "contrib"
projects[vertical_tabs][version] = "1.0-rc1"

projects[views][subdir] = "contrib"
projects[views][version] = "2.12"

projects[views_attach][subdir] = "contrib"
projects[views_attach][version] = "2.2"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "1.10"

; Libraries
libraries[jquery_ui][download][type] = "get"
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.7.3.zip"
libraries[jquery_ui][directory_name] = "jquery.ui"
libraries[jquery_ui][destination] = "modules/contrib/jquery_ui"

; Themes
projects[rootcandy][version] = "1.8"
projects[precision][version] = "1.0-alpha1"
projects[pft][type] = "theme"
projects[pft][download][type] = "get"
projects[pft][download][url] = http://code.projectflowandtracker.com/pft_theme.tgz
