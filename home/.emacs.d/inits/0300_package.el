;;; Package group: Manager for Emacs Lisp packages.
(when (require 'package nil t)
  (setq package-user-dir "~/.emacs.d/elisp/elpa")
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives
               '("ELPA" . "http://tromey.com/elpa/"))
  (package-initialize))
