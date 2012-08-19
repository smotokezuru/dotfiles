;;; Iswitchb group: Switch between buffers using substrings.
;;; (kbd "C-x b") でバッファ切り替えする時に部分文字列から絞り込み
(iswitchb-mode 1)
(setq read-buffer-function      'iswitchb-read-buffer
      iswitchb-regexp           nil
      iswitchb-prompt-newbuffer nil)
