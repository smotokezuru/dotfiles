;;; Skk :
(setq skk-user-directory "~/.emacs.d/ddskk/")
(when (require 'skk-autoloads nil t)
  (setq skk-byte-compile-init-file t)
  ;;C-c b でアンドゥ確定
  (add-hook 'skk-mode-hook
            (lambda ()
              (define-key skk-j-mode-map "\C-cb" 'skk-undo-kakutei)))
  ;;コメント行を抜けたらasciiにする。
  (add-hook 'skk-load-hook
            (lambda ()
              (require 'context-skk))))
;; see also: ~/.emacs.d/inits/9999_define-key.el
