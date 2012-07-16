;;; ** Auto Install : Auto install elisp files.
;;  (auto-install-from-emacswiki "auto-install.el")
(when (require 'auto-install nil t)
  (setq auto-install-directory "~/Library/Emacs/elisp/"
        auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup)
  (require 'anything-auto-install nil t))

