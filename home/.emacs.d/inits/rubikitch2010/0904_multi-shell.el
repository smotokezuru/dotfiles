;;; "Emacs テクニックバイブル" 9.4 参照
;;; (auto-install-from-emacswiki "multi-shell.el")
;;; 複数の shell バッファを利用する
(when (require 'multi-shell nil t)
  ;; 指定しないと環境変数 SHELL のシェルが使われる
  (setq multi-shell-command "/bin/zsh"))
