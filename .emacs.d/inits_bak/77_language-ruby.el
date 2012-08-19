;;; *** Ruby
;;; http://www.emacswiki.org/cgi-bin/wiki/RubyMode
(when (and (require 'ruby-mode nil t)
           (require 'inf-ruby nil t))
  (setq auto-mode-alist
        (append '(("\\.rb$"   . ruby-mode)
                  ("\\.rake$" . ruby-mode)
                  ("Rakefile" . ruby-mode)) auto-mode-alist)
        interpreter-mode-alist
        (append '(("ruby" . ruby-mode)) interpreter-mode-alist)
        ruby-deep-indent-paren-style nil)
  (autoload 'run-ruby "inf-ruby"
    "Run an inferior Ruby process")
  (autoload 'inf-ruby-keys "inf-ruby"
    "Set local key defs for inf-ruby in ruby-mode")
  (add-hook 'ruby-mode-hook 'inf-ruby-hook))

;;; **** Ruby Electric : Electric editing commands for ruby files
(when (require 'ruby-electric nil t)
  (add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t))))
;(setq ruby-electric-expand-delimiters-list '( ?\{)) ; auto close only {}

;;; **** Ruby Block
;;; (auto-install-from-emacswiki "ruby-block")
(when (require 'ruby-block nil t)
  (ruby-block-mode t)
  (setq ruby-block-highlight-toggle t))

;;; **** Flymake for Ruby
;;; http://d.hatena.ne.jp/khiker/20070630/emacs_ruby_flymake
;;; Invoke ruby with '-c' to get syntax checking
(defun flymake-ruby-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "ruby" (list "-c" local-file))))
(push '(".+\\.rb$" flymake-ruby-init) flymake-allowed-file-name-masks)
(push '("Rakefile$" flymake-ruby-init) flymake-allowed-file-name-masks)
(push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) flymake-err-line-patterns)
(add-hook
 'ruby-mode-hook
 '(lambda ()
    (if buffer-file-name (flymake-mode))))

;;; **** Rubydbnx
(autoload 'rubydb "rubydb2x"
  "run rubydb on program file in buffer *gud-file*.
the directory containing file becomes the initial working directory
and source-file directory for your debugger." t)

;;; devel/which for ruby
;;; http://raa.ruby-lang.org/list.rhtml?name=devel-which
(defun ffap-ruby-mode (name)
  (shell-command-to-string
   (format "ruby -e 'require %%[rubygems];require %%[devel/which];require %%[%s];
print(which_library(%%[%s]))'" name name)))

(defun find-rubylib (name)
  (interactive "sRuby library name: ")
  (find-file (ffap-ruby-mode name)))

(add-to-list 'ffap-alist '(ruby-mode . ffap-ruby-mode))

;;; *** rinari
;;; http://rinari.rubyforge.org/
(require 'rinari nil t)

;;; *** Rhtml
(when (require 'rhtml-mode nil t)
  (add-hook 'rhtml-mode-hook
            (lambda () (rinari-raunch))))
