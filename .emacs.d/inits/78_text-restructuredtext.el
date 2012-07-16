;;; * Wp : Word processing.
;;; ** Rst : Support for reStructuredText documents.
;;; http://www.merten-home.de/FreeSoftware/rst-mode/rst-mode.el
(autoload 'rst-mode "rst-mode" "mode for editing reStructuredText documents" t)
(setq auto-mode-alist (append '(("\\.re?st$"  . rst-mode)) auto-mode-alist))
