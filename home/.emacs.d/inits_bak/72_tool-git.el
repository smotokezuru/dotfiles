;;; *** Egg : Controlling Git from Emacs.
;;; (install-elisp "http://github.com/byplayer/egg/raw/master/egg.el")
(when (executable-find "git")
  (require 'egg nil t))
