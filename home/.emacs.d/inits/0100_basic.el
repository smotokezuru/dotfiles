;;; Savehist: Save minibuffer history.
(savehist-mode t)

;;; Save Place: Automatically save place in files.
(setq-default save-place t)
(require 'saveplace)

;;; Editing Basics: Most basic editing facilities.
;;; Transient Mark
(setq transient-mark-mode t)
(setq-default require-final-newline t
              tab-width 4)
;;; リージョンを削除できるように
(delete-selection-mode t)

;;; ** Killing : Killing and yanking commands.
(setq kill-whole-line t)
;;(setq backward-delete-char-untabify-method 'hungry)

;;; Frames : Support for Emacs frames and window systems.
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
;(size-indication-mode -1)

;;; Mode Line: Content of the modeline.
(setq line-number-mode     t
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

(setq inhibit-startup-message t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
