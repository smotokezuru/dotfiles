;;; *** Sgml : SGML editing mode.
;;; http://www.lysator.liu.se/~lenst/about_psgml/
(autoload 'sgml-mode "psgml" "Major mode to edit SGML files." t)
(autoload 'xml-mode  "psgml" "Major mode to edit XML files." t)
(setq auto-mode-alist
      (append '(("\\.sgml$"  . sgml-mode)
;                ("\\.html?$"  . sgml-mode)
                ("\\.xml$"  . xml-mode)) auto-mode-alist))
(setq magic-mode-alist (cons '("<\\?xml\\|<\\!DOCTYPE\\'" . xml-mode)
                             magic-mode-alist))
(setq auto-insert-alist
      (append
       '((("\\.html" . "XHTML Document") nil
          (concat "<!DOCTYPE html PUBLIC "
                  "\"-//W3C//DTD XHTML 1.1//EN\" "
                  "\"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">"))
                (("\\.xml'" . "XML Document") nil
                 "<?xml version=\"1.0\"?>\n"))
              auto-insert-alist))

(setq sgml-indent-data t)

(setq sgml-catalog-files '("CATALOG" "~/Library/XML/dtd/catalog")
      sgml-ecat-files    '("ECAT" "~/Library/XML/dtd/ecat")
      sgml-xml-p                            t
      sgml-always-quote-attributes          t
      sgml-system-identifiers-are-preferred t
      sgml-auto-activate-dtd                t
      sgml-recompile-out-of-date-cdtd       t
      sgml-auto-insert-required-elements    t
      sgml-insert-missing-element-comment   t
      sgml-insert-defaulted-attributes      nil
      sgml-default-doctype-name             "XHTML 1.1"
      sgml-general-insert-case              'lower
      sgml-entity-insert-case               'lower
      sgml-normalize-trims                  t
      sgml-live-element-indicator           t
      sgml-active-dtd-indicator             t
      sgml-minimize-attributes              nil
      sgml-omittag                          nil
      sgml-omittag-transparent              nil
      sgml-shorttag                         nil
      sgml-balanced-tag-edit                t
      sgml-tag-region-if-active             t
      sgml-xml-validate-command             "xmllint --noout --valid %s %s"
      sgml-set-face                         t
      sgml-markup-faces '((start-tag . font-lock-function-name-face)
                          (end-tag   . font-lock-function-name-face)
                          (comment   . font-lock-comment-face)
                          (pi        . bold)
                          (sgml      . bold)
                          (doctype   . bold)
                          (entity    . font-lock-type-face)
                          (shortref  . font-lock-function-name-face)))
(setq sgml-custom-dtd
      '(("HTML 4.01 Strict"
         (concat "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" "
                 "\"http://www.w3.org/TR/html4/strict.dtd\">"))
        ("HTML 4.01 Translational"
         (concat "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Translational//EN\" "
                 "\"http://www.w3.org/TR/html4/loose.dtd\">"))
        ("HTML 4.01 Frameset"
         (concat "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Frameset//EN\" "
                 "\"http://www.w3.org/TR/html4/frameset.dtd\">"))
        ("XHTML 1.1"
         (concat "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" "
                 "\"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">"))))

(add-hook 'sgml-mode-hook
          (lambda ()
            (if (string-match "\\.s?html?$" (buffer-name))
                (setq sgml-indent-step nil
                      sgml-indent-data nil)
              (setq sgml-indent-step   2))
            (setq tab-width            2
                  indent-tabs-mode     nil)))

;; Some convenient key definitions:
;;(define-key sgml-mode-map "\C-c\C-x\C-e" 'sgml-describe-element-type)
;;(define-key sgml-mode-map "\C-c\C-x\C-i" 'sgml-general-dtd-info)
;;(define-key sgml-mode-map "\C-c\C-x\C-t" 'sgml-describe-entity)
