;;; "Emacs テクニックバイブル" 9.9 参照
;;; (auto-install-from-emacswiki "multi-term.el")
;;; Emacs で端末エミュレータを利用する
(when (require 'multi-term nil t)
  ;; C-x C-c ESC は端末に渡さないで Emacs が使うようにする
  (setq term-unbind-key-list '("C-x" "C-c" "<ESC>")
        term-bind-key-alist
        '(("C-c C-c" . term-interrupt-subjob)
          ("C-m" . term-send-raw)
          ("M-f" . term-send-forward-word)
          ("M-b" . term-send-backward-word)
          ("M-o" . term-send-backspace)
          ("M-p" . term-send-up)
          ("M-n" . term-send-down)
          ("M-M" . term-send-forward-kill-word)
          ("M-N" . term-send-backward-kill-word)
          ("M-r" . term-send-reverse-search-history)
          ("M-," . term-send-input)
          ("M-." . comint-dynamic-complete))))
