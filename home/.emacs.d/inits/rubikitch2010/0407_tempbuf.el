;;; Tempbuf: Kill unused buffers in the background.
;;; 不要と判断したバッファを自動削除
;;; (install-elisp-from-emacswiki "tempbuf.el")
(when (require 'tempbuf nil t)
  (add-hook 'find-file-hooks 'turn-on-tempbuf-mode)
  (add-hook 'dired-file-hooks 'turn-on-tempbuf-mode))
