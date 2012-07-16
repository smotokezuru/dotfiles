;;; * Programming

;;; ** Tools



;;; *** Which Func : Mode to display the current function name in the modeline.
(which-function-mode t)



;;; ** Languages

;;; *** Hideshow : Minor mode for hiding and showing program and comment blocks.
(defun toggle-selective-display (column)
  (interactive "P")
  (set-selective-display
   (or column
       (unless selective-display
         (1+ (current-column))))))
(defun toggle-hiding (column)
  (interactive "P")
  (if hs-minor-mode
      (if (condition-case nil
              (hs-toggle-hiding)
            (error t))
          (hs-show-all))
    (toggle-selective-display column)))

(global-set-key (kbd "C-+")  'toggle-hiding)
(global-set-key (kbd "C-\\") 'toggle-selective-display)

(add-hook 'c-mode-common-hook   'hs-minor-mode)
;(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'cperl-mode-hook      'hs-minor-mode)
(add-hook 'ruby-mode-hook       'hs-minor-mode)
(add-to-list 'hs-special-modes-alist
 '((ruby-mode
    "class\\|module\\|def\\|if\\|unless\\|case\\|while\\|until\\|for\\|begin\\|do"
    "end" "#" ruby-move-to-block nil)))

(add-to-list 'hs-special-modes-alist
             '(sgml-mode
               "<!--\\|<[^/>]*[^/]>"
               "-->\\|</[^/>]*[^/]>"
               "<!--"
               sgml-skip-tag-forward
               nil))


;;; **** Eldoc : Show function arglist or variable docstring in echo area.
;;; (auto-install-from-emacswiki "eldoc-extension.el")
(when (and (require 'eldoc nil t)
           (require 'eldoc-extension nil t))
  (setq eldoc-idle-delay                0
        eldoc-echo-area-use-multiline-p t)
  (add-hook 'emacs-lisp-mode-hook       'turn-on-eldoc-mode)
  (add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
  (add-hook 'ielm-mode-hook             'turn-on-eldoc-mode)
  (if (require 'diminish nil t)
      (diminish 'eldoc-mode)))





;;; *** Nxml : New XML editing mode.
;;; *** Python : Silly walks in the Python language.
;;; *** Relax Ng : Validation of XML using RELAX NG.
