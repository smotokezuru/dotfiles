;;; Undohist
;;; (install-elisp "http://cx4a.org/pub/undohist.el")
(when (require 'undohist nil t)
  (setq undohist-directory "~/.emacs.d/var/undohist")
  (undohist-initialize))

