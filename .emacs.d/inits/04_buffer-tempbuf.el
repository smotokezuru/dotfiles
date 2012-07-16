;;; Tempbuf: Kill unused buffers in the background.
;;; 不要と判断したバッファを自動削除
;;; (install-elisp-from-emacswiki "tempbuf.el")
(require 'tempbuf)
(add-hook 'find-file-hook  'turn-on-tempbuf-mode)
(add-hook 'dired-mode-hook 'turn-on-tempbuf-mode)
