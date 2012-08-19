;;; Bm: Visible, buffer local bookmarks.
;;; (install-elisp "http://cvs.savannah.gnu.org/viewvc/*checkout*/bm/bm/bm.el")
;;; カーソル位置に目に見える印をつける
(setq-default bm-buffer-persistence nil)
(setq bm-restore-repository-on-load t)
(when (require 'bm nil t)
  (add-hook 'find-file-hook         'bm-buffer-restore)
  (add-hook 'kill-buffer-hook       'bm-buffer-save)
  (add-hook 'after-save-hook        'bm-buffer-save)
  (add-hook 'after-revert-hook      'bm-buffer-restore)
  (add-hook 'vc-before-checkin-hook 'bm-buffer-save))
;; see also: ~/.emacs.d/inits/9999_define-key.el
