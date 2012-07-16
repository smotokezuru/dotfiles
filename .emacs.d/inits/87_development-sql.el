;;; *** SQL : Running a SQL interpreter from within Emacs buffers.
;;   http://www.emacswiki.org/cgi-bin/wiki.pl?SqlMode
;;   sql.el is part of Emacs and XEmacs.
(autoload 'sql-mode    "sql" "SQL Edit mode" t)
(autoload 'sql-oracle  "sql" "SQL Edit mode" t)
(autoload 'sql-ms      "sql" "SQL Edit mode" t)
(autoload 'master-mode "master" "Master mode minor mode." t)

;; SQL mode
(eval-after-load "sql"
  '(progn
     (load-library "sql-indent")
     (load-library "sql-complete")
     (load-library "sql-transform")))

;(setq sql-user     "username"
;      sql-server   "servername"
;      sql-database "database name")

(add-hook 'sql-mode-hook
          (function (lambda ()
                      (setq sql-indent-offset                   4
                            sql-indent-maybe-tab                t
                            sql-pop-to-buffer-after-send-region t)
                      (local-set-key "\C-cu" 'sql-to-update) ; sql-transform
                      (master-mode t)
                      (master-set-slave sql-buffer))))

(add-hook 'sql-set-sqli-hook
          (function (lambda ()
                      (master-set-slave sql-buffer))))

(add-hook 'sql-interactive-mode-hook
          (function (lambda ()
                      ;; execute statement typing ";"
                      (setq sql-electric-stuff 'semicolon)
                      ;; comint
                      (setq comint-buffer-maximum-size 500)
                      (setq comint-input-autoexpand t)
                      (setq comint-output-filter-functions
                            'comint-truncate-buffer))))

;; SQL
;(defadvice sql-send-region (after sql-store-in-history)
;  "The region sent to the SQLi process is also stored in the history."
;  (let ((history (buffer-substring-no-properties start end)))
;    (save-excursion
;      (set-buffer sql-buffer)
;      (message history)
;      (if (and (funcall comint-input-filter history)
;               (or (null comint-input-ignoredups)
;                   (not (ring-p comint-input-ring))
;                   (ring-empty-p comint-input-ring)
;                   (not (string-equal (ring-ref comint-input-ring 0)
;                                      history))))
;          (ring-insert comint-input-ring history))
;      (setq comint-save-input-ring-index comint-input-ring-index)
;      (setq comint-input-ring-index nil))))
;(ad-activate 'sql-send-region)
