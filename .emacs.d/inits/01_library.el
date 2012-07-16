;;; *** (install-elisp "http://tromey.com/elpa/package-install.el")
;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;;; (install-elisp-from-emacswiki "auto-async-byte-compile.el")
(setq auto-async-byte-compile-exclude-files-regexp "/junk/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

;;; ** Auto Install : Auto install elisp files.
;;  (auto-install-from-emacswiki "auto-install.el")
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp/"
      auto-install-update-emacswiki-package-name t
      ediff-window-setup-function 'ediff-setup-windows-plain)
(auto-install-compatibility-setup)
(require 'anything-auto-install nil t)
