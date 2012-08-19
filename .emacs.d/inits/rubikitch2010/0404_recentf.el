;;; Recentf: Maintain a menu of recently opened files.
;;; (install-elisp-from-emacswiki "recentf-ext.el")
(setq recentf-max-saved-items 500
      recentf-exclude         '("/TAGS$" "/var/tmp/"))
(require 'recentf-ext nil t)
