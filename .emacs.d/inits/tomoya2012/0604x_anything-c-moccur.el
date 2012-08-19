;;; Anything C Moccur
;;; (auto-install-from-url "http://svn.coderepos.org/share/lang/elisp/anything-c-moccur/trunk/anything-c-moccur.el")
;;;  see http://d.hatena.ne.jp/IMAKADO/20080724/1216882563
(when (require 'anything-c-moccur nil t)
  (setq anything-c-moccur-anything-idle-deleay 0.1
        anything-c-moccur-highlight-info-line-flag t
        anything-c-moccur-enable-auto-look-flag t
        anything-c-moccur-enable-initial-pattern t)
  (add-hook 'dired-mode-hook
            '(lambda ()
               (local-set-key
                (kbd "O")
                'anything-c-moccur-dired-do-moccur-by-moccur))))

