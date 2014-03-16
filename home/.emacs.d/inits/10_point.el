;;; Migemo
;;;  http://0xcc.net/migemo/
(require 'migemo)

;;; Point Undo カーソル位置を戻す
;;; (install-elisp-from-emacswiki "point-undo.el")
(when (require 'point-undo nil t)
  (global-set-key (kbd "<f7>")   'point-undo)
  (global-set-key (kbd "S-<f7>") 'point-redo))

;;; Bm: Visible, buffer local bookmarks.
;;; (install-elisp "http://cvs.savannah.gnu.org/viewvc/*checkout*/bm/bm/bm.el")
(setq-default bm-buffer-persistence nil)
(setq bm-restore-repository-on-load t)
(when (require 'bm nil t)
  (add-hook 'find-file-hook         'bm-buffer-restore)
  (add-hook 'kill-buffer-hook       'bm-buffer-save)
  (add-hook 'after-save-hook        'bm-buffer-save)
  (add-hook 'after-revert-hook      'bm-buffer-restore)
  (add-hook 'vc-before-checkin-hook 'bm-buffer-save)
  (global-set-key (kbd "M-SPC") 'bm-toggle)
  (global-set-key (kbd "M-[")   'bm-previous)
  (global-set-key (kbd "M-]")   'bm-next))

;;; (install-elisp-from-emacswiki "goto-chg.el")
(when (require 'goto-chg nil t)
  (global-set-key (kbd "<f8>")   'goto-last-change)
  (global-set-key (kbd "S-<f8>") 'goto-last-change-reverse))
