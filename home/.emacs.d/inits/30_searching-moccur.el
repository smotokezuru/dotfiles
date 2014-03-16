;;; Color  Moccur
;;;  (install-elisp-from-emacswiki "color-moccur.el")
;;;  (install-elisp-from-emacswiki "moccur-edit.el")
;;;  see http://www.bookshelf.jp/soft/meadow_50.html#SEC743
(require 'color-moccur)
(setq moccur-split-word t)
;; (global-set-key (kbd "M-o") 'occur-by-moccur)
;; (global-set-key (kbd "C-M-o") 'dmoccur)
(add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
(add-to-list 'dmoccur-exclusion-mask "^#.+#$")
(require 'moccur-edit)
(if (fboundp 'migemo-forward)
    (setq moccur-use-migemo t))

;;; Anything C Moccur
;;;  (auto-install-from-url "http://svn.coderepos.org/share/lang/elisp/anything-c-moccur/trunk/anything-c-moccur.el")
;;;  see http://d.hatena.ne.jp/IMAKADO/20080724/1216882563
(when (require 'anything-c-moccur nil t)
  (setq anything-c-moccur-anything-idle-delay 0.2
        anything-c-moccur-higligt-info-line-flag t
        anything-c-moccur-enable-auto-look-flag  t
        anything-c-moccur-enable-initial-pattern t)
  (global-set-key (kbd "M-o")
                  'anything-c-moccur-occur-by-moccur) ; in buffer
  (global-set-key (kbd "C-M-o")
                  'anything-c-moccur-dmoccur)         ; in directory
  (add-hook 'dired-mode-hook
            '(lambda ()
               (local-set-key
                (kbd "O")
                'anything-c-moccur-dired-do-moccur-by-moccur))))
