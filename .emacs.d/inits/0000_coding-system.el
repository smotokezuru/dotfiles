(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; Mac file name settings
(when (eq system-type 'darwin)
  (require 'ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs))

;; Win32 file name settings
(when (eq system-type 'w32)
  (require 'ucs-normalize)
  (set-file-name-coding-system 'cp932)
  (setq locale-coding-system 'cp932))

