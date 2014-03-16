;;; ** Undo
;;; *** Undohist
;;; (install-elisp "http://cx4a.org/pub/undohist.el")
(when (require 'undohist nil t)
  (undohist-initialize)
  (setq undohist-directory "~/var/undohist"))

;;; *** Undo Tree
;;; (install-elisp "http://www.dr-qubit.org/undo-tree/undo-tree.el")
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))
