;;; * Development : Support for further development of Emacs.

;;; ** Docs : Support for Emacs documentation.

;;; *** Info : Info subsystem.

;;; **** Info Plus : Various enhancements to Info.
(eval-after-load "info" '(require 'info+))


;;; ** Processes : Process, subshell, compilation, and job control support.
;;; *** Execute : Executing external commands.
(setq exec-path '("~/bin"
                  "/opt/local/bin" "/opt/local/sbin"
                  "/usr/local/bin"
                  "/usr/bin"       "/usr/sbin"
                  "/bin"           "/sbin"))
(if (eq window-system 'ns)
    (add-to-list 'exec-path "/Applications/Emacs.app/Contents/MacOS/bin"))



;;; look and feel
(setq  ring-bell-function 'ignore)

;;; modeline
(add-hook 'isearch-mode-hook
          '(lambda () (setcar (cdr (assq 'isearch-mode minor-mode-alist)) "")))
(add-hook 'texinfo-mode-hook
          '(lambda () (setq mode-name "Texi")))

;;; enable jumping over window by shift + cursor
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;; mini buffer settings
(setq completion-ignore-case t)


;(setenv "SHELL" shell-file-name)
;(setq explicit-sh-args '("-login" "-i"))
;(if (boundp 'w32-quote-process-args)
;  (setq w32-quote-process-args ?\")) ;; Include only for MS Windows.

;;; abbrev-mode
(setq abbrev-file-name    (expand-file-name "~/.emacs.d/abbrev_defs")
      save-abbrevs        'silently
      default-abbrev-mode t)
;(define-key esc-map  " " 'expand-abbrev) ; M-SPC
(quietly-read-abbrev-file)
(if (require 'diminish nil t)
    (diminish 'abbrev-mode))

;;
(auto-image-file-mode t)

;;;
;;;
(desktop-load-default)
(desktop-read)

;; chmod +x when saved shebang-ed file
(add-hook 'after-save-hook
          '(lambda ()
             (save-restriction
               (widen)
               (let ((name (buffer-file-name)))
                 (when (and (not (string-match ":" name))
                            (not (string-match "/\\.[^/]+$" name))
                            (equal "#!" (buffer-substring 1 (min 3 (point-max)))))
                   (set-file-modes name (logior (file-modes name) 73))
                   (message "Wrote %s (chmod +x)" name))))))

;;; wanderlust
;;; http://www.gohome.org/wl/index.ja.html
;;; depends on:
;;;   FLIM http://kanji.zinbun.kyoto-u.ac.jp/~tomo/elisp/FLIM/
;;;   SEMI http://kanji.zinbun.kyoto-u.ac.jp/~tomo/elisp/SEMI/
;;;   starttls ftp://opaopa.org/pub/elisp/starttls-0.9.tar.gz
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

;;; flymake
;;(defun flymake-get-make-cmdline (source base-dir
;;  (list "make"
;;        (list "-s" "-C"
;;              base-dir
;;              (concat "CHK_SOURCES=" source)
;;              "SYNTAX_CHECK_MODE=1")))
;
;


;;; simple-hatena-mode
;;; http://coderepos.org/share/wiki/SimpleHatenaMode
;;; http://svn.coderepos.org/share/lang/elisp/simple-hatena-mode/tags/release-0.15/simple-hatena-mode.el
(require 'simple-hatena-mode nil t)

;;; ** Hypermedia



;;; *** Hiki
(setq hiki-site-list
      '(("hohhon" "http://www.hohhon.net/cgi-bin/hiki.cgi")))
(load "hiki-mode" "hiki-mode" t)


;;; `mode-info'
;;; http://www.namazu.org/~tsuchiya/elisp/mode-info.html
(when (and (require 'mi-config nil t)
           (require 'mi-fontify))
  (global-set-key "\C-chf" 'mode-info-describe-function)
  (global-set-key "\C-chv" 'mode-info-describe-variable)
  (global-set-key "\M-." 'mode-info-find-tag)
  (setq mode-info-index-directory "~/info/index")
  (setq Info-directory-list (cons Info-default-directory-list
                                  '((expand-file-name "~/info")
                                   ;(expand-file-name "~/info/glibc-2.3.2"))
                                    (expand-file-name "~/info/Gauche-0.8.14"))))
  (setq mode-info-class-alist
        '((elisp  emacs-lisp-mode lisp-interaction-mode)
          (libc   c-mode c++-mode)
          (make   makefile-mode)
          (perl   perl-mode cperl-mode eperl-mode)
          (ruby   ruby-mode)
          (gauche scheme-mode scheme-interaction-mode inferior-scheme-mode))))

;;; ** Rinari
(require 'rinari nil t)
