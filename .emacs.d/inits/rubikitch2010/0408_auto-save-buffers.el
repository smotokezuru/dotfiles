;;; ファイル自動保存
;;; http://0xcc.net/misc/auto-save/
;;; (install-elisp "http://homepage3.nifty.com/oatu/emacs/archives/auto-save-buffers.el")
(when (require 'auto-save-buffers nil t)
  (run-with-idle-timer 2 t 'auto-save-buffers))


