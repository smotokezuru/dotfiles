;;; * Files
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;;; http://taiyaki.org/elisp/mell/src/mell.el
;;; http://taiyaki.org/elisp/text-adjust/src/text-adjust.el
(when (require 'text-adjust nil t)
  (add-hook 'before-save-hook
            (lambda ()
              (if (memq major-mode '(org-mode text-mode))
                  (text-adjust-space-buffer)))))



;;; ** Auto Save
(setq auto-save-list-file-prefix (expand-file-name "~/.autosave"))

;;; ** Backup
(setq make-backup-files nil)

