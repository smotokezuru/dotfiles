;;; View : Peruse file or buffer without editing.
(require 'view)
(setq view-read-only t
      view-mode-by-default-regexp "\\.log$")

;; less like keybind
(define-key view-mode-map (kbd "N") 'View-search-last-regexp-backward)
(define-key view-mode-map (kbd "?") 'View-search-regexp-backward)
(define-key view-mode-map (kbd "G") 'View-goto-line-last)
(define-key view-mode-map (kbd "f") 'View-scroll-page-forward)
(define-key view-mode-map (kbd "b") 'View-scroll-page-backward)

;; vi like keybind
(define-key view-mode-map (kbd "h") 'backward-char)
(define-key view-mode-map (kbd "j") 'next-line)
(define-key view-mode-map (kbd "k") 'previous-line)
(define-key view-mode-map (kbd "l") 'forward-char)
(define-key view-mode-map (kbd "J") 'View-scroll-page-forward)
(define-key view-mode-map (kbd "K") 'View-scroll-page-backward)

(define-key view-mode-map (kbd "m") 'bm-toggle)
(define-key view-mode-map (kbd "[") 'bm-previous)
(define-key view-mode-map (kbd "]") 'bm-next)

;;; Viewer : View-mode extensions
;;; (install-elisp-from-emacswiki "viewer.el")
(require 'viewer)
(setq viewer-modeline-color-unwritable "tomato"
      viewer-modeline-color-view       "orange")
(viewer-stay-in-setup)
(viewer-change-modeline-color-setup)
(define-overriding-view-mode-map c-mode
  ("RET" . gtags-find-tag-from-here))
(define-overriding-view-mode-map emacs-lisp-mode
  ("RET" . find-function-at-point))
