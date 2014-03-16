;;; ** One key
;; (auto-install-from-emacswiki "one-key.el")
;; (auto-install-from-emacswiki "one-key-config.el")
;; (auto-install-from-emacswiki "one-key-default.el")
(when (and (require 'one-key-config nil t)
           (require 'one-key-default nil t))
  (one-key-default-setup-keys)
;  (global-set-key "\C-x" 'one-key-menu-C-x)
  (global-set-key "\C-xr" 'one-key-menu-C-x-r)
  (global-set-key "\C-x4" 'one-key-menu-C-x-4)
  (global-set-key "\C-x5" 'one-key-menu-C-x-5))