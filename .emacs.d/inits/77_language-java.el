;;; *** Malabar Mode : A better Java mode
(when (require 'malabar-mode nil t)
  (setq malabar-groovy-lib-dir "~/Library/Emacs/elisp/malabar/lib"))
  (add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))
  (add-to-list 'malabar-import-excluded-classes-regexp-list
               '("^java\\.awt\\..*$"
                 "^com\\.sun\\..*$"
                 "^org\\.omg\\..*$")
  (add-hook 'malabar-mode-hook
            (lambda ()
              (gtags-mode t)
              (add-hook 'after-save-hook 'malabar-compile-file-silently
                        nil t))))

;;; **** Malabar Groovy : Customization of malabar-mode's inferior Groovy.
(setq malabar-groovy-java-options '("-Duser.language=en"))

;;; **** Flymake for Java
;(defun flymake-java-ecj-init ()
;  (let* ((temp-file  (flymake-init-create-temp-buffer-copy
;                      'ecj-create-temp-file))
;         (local-file (file-relative-name
;                      temp-file
;                      (file-name-directory buffer-file-name))))
;    (list "java" (list "-jar" (expand-file-name "~/Library/Java/ecj.jar")
;                       "-Xemacs"
;                       "-d" "/dev/null"
;                       "-source" "1.6"
;                       "-target" "1.6"
;                       "-proceedOnError"
;;                       "-sourcepath" (car jde-sourcepath)
;                       "-classpath" (malabar-project-classpath)
;                       local-file))))
;
;(defun flymake-java-ecj-cleanup ()
;  "Cleanup after `flymake-java-ecj-init' --delete temp file and dirs."
;  (flymake-safe-delete-file flymake-temp-source-file-name)
;  (when flymake-temp-source-file-name
;    (flymake-safe-delete-directory
;     (file-name-directory flymake-temp-source-file-name))))
;
;(defun ecj-create-temp-file (file-name prefix)
;  "Create the file FILE-NAME in a unique directory in the temp directory."
;  (file-truename (expand-file-name (file-name-nondirectory file-name)
;                                   (expand-file-name (int-to-string (random))
;                                                     (flymake-get-temp-dir)))))

;;; **** Flymake for Java (CheckStyle)
;(defun flymake-java-checkstyle-init ()
;  (let* ((temp-file  (flymake-init-create-temp-buffer-copy
;                      'ecj-create-temp-file))
;         (local-file (file-relative-name
;                      temp-file
;                      (file-name-directory buffer-file-name))))
;    (list "java"
;          (list "-jar" (expand-file-name "~/Library/Emacs/java/checkstyle-all-5.0.jar")
;                "-c" (expand-file-name "~/share/checkstyle/sun_checks.xml")
;                "-classpath" (malabar-project-classpath)
;                local-file))))
;
;(push '(".+\\java$"
;;        flymake-java-ecj-init
;        flymake-java-checkstyle-init
;        flymake-java-ecj-cleanup)
;      flymake-allowed-file-name-masks)
;
;(push '("\\(.*?\\):\\([0-9]+\\): error: \\(.*?\\)\n" 1 2 nil 2 3
;      (6 compilation-error-face)) compilation-error-regexp-alist)
;
;(push '("\\(.*?\\):\\([0-9]+\\): warning: \\(.*?\\)\n" 1 2 nil 1 3
;      (6 compilation-warning-face)) compilation-error-regexp-alist)

;;; *** Java
;;; **** Flymake for Java
;;http://dev.ariel-networks.com/Members/matsuyama/detect-syntax-errors-by-flymake
;;; redefine to remove "check-syntax" target
;
;; specify that flymake use ant instead of make
;(setcdr (assoc "\\.java\\'" flymake-allowed-file-name-masks)
;        '(flymake-simple-ant-java-init flymake-simple-java-cleanup))
;
;; redefine to remove "check-syntax" target
;(defun flymake-get-ant-cmdline (source base-dir)
;  (list "ant"
;        (list "-buildfile"
;              (concat base-dir "/" "build.xml"))))
;
;(add-hook 'java-mode-hook
;          '(lambda ()
;             (flymake-mode)))

;;; **** Semantic
;;(setq semantic-load-turn-useful-things-on t)
;;(setq semanticdb-default-save-directory (expand-file-name "~/.emacs.d/.semantic"))
;;(if (fboundp 'semantic-load-enable-code-helpers)
;;    (semantic-load-enable-code-helpers))
;; (semantic-load-enable-guady-code-helpers)
;;(semantic-load-enable-excessive-code-helpers)

;; Enable this if you develop in semantic, or develop grammars
;; (semantic-load-enable-semantic-debugging-helpers)

