;;; "Emacs テクニックバイブル" 13.7 参照
;;; C言語のプリプロセッサを隠す
(require 'hideif)
(add-hook 'c-mode-common-hook 'hide-ifdef-mode)
