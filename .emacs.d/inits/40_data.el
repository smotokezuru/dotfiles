;;; * Data : Support editing files of data.
;;; ** Compression : Data compression utilities.
;; enable editing compressed files
(auto-compression-mode t)

;;; ** Session :
;; http://emacs-session.sourceforge.net/
(when (require 'session nil t)
  (add-hook 'after-init-hook 'session-initialize))

;;; ** Generic X group: A collection of generic modes.
(require 'generic-x nil t)
