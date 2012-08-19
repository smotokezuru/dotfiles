;;; "Emacs テクニックバイブル" 12.4 参照
;;; Emacs Lisp 関数/変数のヘルプをエコーエリアに表示
;;; (auto-install-from-emacswiki "eldoc-extension.el")
(when (require 'eldoc-extention nil t)
  (add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
  (add-hook 'lisp-intaraction-mode-hook 'turn-on-eldoc-mode)
  (add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
  (setq eldoc-idle-delay 0.2
        eldoc-minor-mode-string ""))
