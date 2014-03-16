;;; * Environment


;;; ** Whitespace Faces
(setq-default indent-line-function 'indent-relative-maybe)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(jaspace-highlight-eol-face ((t (:foreground "Gray10"))))
 '(trailing-whitespace ((t (:background "DarkBlue")))))
(add-hook 'text-mode-hook
          (lambda ()
            (setq show-trailing-whitespace t)))
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (setq show-trailing-whitespace t)))

;;; ** Frames : Support for Emacs frames and window systems.

(setq frame-title-format (format "%%f - Emacs@%s" system-name)
      icon-title-format  "%b"
      default-frame-alist
      (append '((alpha  . (90 90))
;                (height . 46)
                (width  . 85)
                (left   . 0)
                (top    . 0)) default-frame-alist))

;;; *** Fringe : Window fringes.
(setq-default indicate-empty-lines 't)
(setq-default indicate-buffer-boundaries 'right)

;;; ** Cursor : Displaying text cursors.
(blink-cursor-mode nil)

;;; ** Minibuffer : Controlling the behavior of the minibuffer.

;;; *** Icomplete : Show completions dynamically in minibuffer.
(icomplete-mode t)

;;; *** Partial Completion : Partial Completion of items.
(partial-completion-mode t)


;;; ** Windows : Windows within a frame.
(setq scroll-step 1)


;;; ** Initialization
(setq inhibit-startup-screen t
      inhibit-startup-echo-area-message t
      initial-scratch-message nil)

;;; ** Display
(setq visible-bell t)

