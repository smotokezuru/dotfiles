;;;; .emacs.el --- emacs customization  -*- coding: utf-8 -*-
;(setq debug-on-error t)

;;; * load path
;(setenv "RUBYLIB" "~/Library/Migemo")
;(setq migemo-directory "~/Library/Migemo")
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(cd "~/ownCloud/elisp")

;(load "~/.emacs.d/elisp/subdirs.el")
(load "~/ownCloud/elisp/subdirs.el")
(cd "~")
;; tomoya's way
;;(defun add-to-load-path (&rest paths)
;;  (let (path)
;;    (dolist (path paths paths)
;;      (let ((default-directory (expand-file-name
;;                                (concat user-emacs-directory path))))
;;        (add-to-list 'load-path default-directory)
;;        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
;;            (normal-top-level-add-subdirs-to-load-path))))))
;;(add-to-load-path "elisp" "conf")


(require 'init-loader nil t)
(init-loader-load)



;;; * Local Functions

;;; ** Open Scratch File
(defun scratch ()
  (interactive)
  (let* ((file (expand-file-name
                (format-time-string "%Y%m%d_" (current-time))
                "~/Documents/Scratch/")))
    (find-file-other-window (read-string "Scratch Code: " file))))



;;; hiwin
;;; (auto-install-from-url "http://github.com/tomoya/hiwin-mode/raw/master/hiwin.el")
;(require 'hiwin)
;(hiwin-mode nil)

;;; *** Multi Term
;;; *** (auto-install-from-emacswiki "multi-term.el")
;(when (require 'multi-term nil t)
;  (setq multi-term-program "zsh"))

;;; prj.el ends here
;(setq debug-on-error nil)


;;; ** Other Window Or Split
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window))
  (other-window 1))
(global-set-key (kbd "C-o") 'other-window-or-split)
