;;; (install-elisp-from-emacswiki "minor-mode-hack.el")
;;; マイナモード衝突問題を解決する
;;; 有効なマイナモード同士でキーバインドがかぶっていて、
;;; かつ特定順序で実行されないと困る場合に下記で優先順位設定する
(require 'minor-mode-hack nil t)
;; (lower-minor-mode-map-alist 'ruby-electric-mode)
;; (lower-minor-mode-map-alist 'anthy-minor-mode)

