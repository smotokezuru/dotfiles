;;; *** Dsvn : Controlling Subversion from Emacs.
;;; (install-elisp "http://svn.apache.org/repos/asf/subversion/trunk/contrib/client-side/emacs/dsvn.el")
(when (executable-find "svn")
  (require 'dsvn nil t))

