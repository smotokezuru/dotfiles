;;; *** Css
;;; http://mewde.googlecode.com/files/css-mode.el
(autoload 'css-mode "css-mode")
(setq auto-mode-alist (cons '("\\.css$" . css-mode) auto-mode-alist))
(setq css-indent-level 2)
(add-hook 'css-mode-hook
          '(lambda ()
             (make-variable-buffer-local 'ac-sources)
             (add-to-list 'ac-sources
                          '((candidates . (lambda ()
                                            (all-completions
                                             ac-target
                                             css-property-keywords)))))))
