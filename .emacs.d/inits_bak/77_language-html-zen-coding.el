;;; ** Zen Coding
;;; http://github.com/chrisdone/zencoding/raw/master/zencoding-mode.el
(when (require 'zencoding-mode nil t)
  (add-hook 'sgml-mode-hook 'zencoding-mode)
  (add-hook 'html-mode-hook 'zencoding-mode)
  (add-hook 'text-mode-hook 'zencoding-mode)
  (define-key zencoding-mode-keymap (kbd "C-z") 'zencoding-expand-line))
