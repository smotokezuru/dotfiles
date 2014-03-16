;;; *** Visual Basic
(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
(setq auto-mode-alist (append '(("\\.(frm|bas|cls|vbs)$" .
                                 visual-basic-mode)) auto-mode-alist))
(setq visual-basic-mode-indent           2
      visual-basic-fontify-p             t
      visual-basic-allow-single-line-if  t
      visual-basic-capitalize-keywords-p nil)
