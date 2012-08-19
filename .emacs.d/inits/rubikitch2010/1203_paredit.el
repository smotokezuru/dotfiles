;;; "Emacs テクニックバイブル" 12.3 参照
;;; 括弧の対応をとりながらS式を編集する
;;; (auto-install-from-url "http://mumble.net/~campbell/emacs/paredit.el")
;;; C-( 括弧で囲む
;;; C-" 引用符で囲む
;;; M-s 括弧を外す
;;; M-r S式を押し上げる
;;; M-S 文字やリストを途中で切断する
(when (require 'paredit nil t)
  (add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
  (add-hook 'lisp-mode-hook 'enable-paredit-mode)
  (add-hook 'ielm-mode-hook 'enable-paredit-mode))
