;;; Auto Save group: Preventing accidental loss of data.
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq auto-save-timeout 15)
(setq auto-save-interval 60)

