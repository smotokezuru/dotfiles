;;; "Emacs テクニックバイブル" 13.10 参照
;;; 現在の関数名を常に表示する
(which-func-mode 1)
(setq which-func-modes t)
;;; 画面上部に表示
(delete (assoc 'which-func-mode mode-line-format) mode-line-format)
(setq-default header-line-format '(which-func-mode ("" which-func-mode)))
