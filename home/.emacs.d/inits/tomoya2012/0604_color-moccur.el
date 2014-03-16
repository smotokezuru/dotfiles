;;; Color  Moccur
;;;  (auto-install-from-emacswiki "color-moccur.el")
;;;  see http://www.bookshelf.jp/soft/meadow_50.html#SEC743
(when (require 'color-moccur)
  ;; see also: ~/.emacs.d/inits/9999_define-key.el
  (setq moccur-split-word t)
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
  (add-to-list 'dmoccur-exclusion-mask "^#.+#$")
  (when (and (executable-find "cmigemo")
             (require 'migemo nil t))
    (setq moccur-use-migemo t)))
