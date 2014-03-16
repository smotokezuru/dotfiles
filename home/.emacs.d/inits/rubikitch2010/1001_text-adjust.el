;;; "Emacs テクニックバイブル" 10.1 参照
;;; 日本語の文章を整形する
;;; (auto-install-from-url "http://taiyaki.org/elisp/mell/src/mell.el")
;;; (auto-install-from-url "http://taiyaki.org/elisp/text-adjust/src/text-adjust.el")
(when (require 'text-adjust nil t)
  (add-hook 'before-save-hook
            (lambda ()
              (if (memq major-mode '(org-mode text-mode))
                  (text-adjust-space-buffer)))))
