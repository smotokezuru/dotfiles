;;; Auto Install : Auto install elisp files.

;; (auto-install-from-emacswiki "auto-install.el")
(require 'auto-install nil t)

;;  (auto-install-from-emacswiki "auto-install.el")
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp/auto-install"
      auto-install-update-emacswiki-package-name t
      ;url-proxy-services '(("http" . "localhost:8339"))
      ediff-window-setup-function 'ediff-setup-windows-plain)
(auto-install-compatibility-setup)
(require 'anything-auto-install nil t)
