;;; "Emacs テクニックバイブル" 13.1 参照
;;;
;;; (auto-install-from-emacswiki "open-junk-file.el")
(when (require 'open-junk-file nil t)
  (setq open-junk-file-format "~/.emacs.d/var/junk/%Y-%m-%d-%H%M%S."))
