;;; Skk :
(require 'skk-autoloads nil t)
(global-set-key "\C-x\C-j" 'skk-mode)

;;; Sticky
;;; (auto-install-from-emacswiki "sticky.el")
;;(require 'sticky nil t)
;;(use-sticky-key ";" sticky-alist:en)

;;; Hl Line: Highlight the current line.
(global-hl-line-mode t)
(set-face-background 'hl-line "darkolivegreen")

;;; Savehist: Save minibuffer history.
(savehist-mode t)

;;; Save Place: Automatically save place in files.
(setq-default save-place t)
(require 'saveplace)

;;; Paren Showing Faces : Group for faces of Show Paren mode.
(show-paren-mode t)
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "Green")
(set-face-foreground 'show-paren-match-face "Black")
(set-face-background 'show-paren-mismatch-face "Red")
(set-face-foreground 'show-paren-mismatch-face "Black")

;;; Editing Basics: Most basic editing facilities.
;;; Transient Mark
(setq transient-mark-mode t)

;;; Frames : Support for Emacs frames and window systems.
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;; Mode Line: Content of the modeline.
(setq line-number-mode     nil
      column-number-mode   t
      size-indication-mode nil)

;;; Minibuffer: Controlling the behavior of the minibuffer.
(setq enable-recursive-minibuffers t
      history-length               1000
      echo-keystrokes              0.1)
(defalias 'yes-or-no-p 'y-or-n-p)

;;; Menu: Input from the menus.
(setq use-dialog-box nil)
(defalias 'message-box 'message)

;;; Find File: Finding files.
(setq large-file-warning-threshold (* 25 1024 1024))

;;; Storage Allocation : Storage allocation and gc for Emacs Lisp interpreter.
(setq gc-cons-threshold (* 10 gc-cons-threshold))

;;; Debug: Debugging Emacs itself.
(setq message-log-max 10000)
