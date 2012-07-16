;;; *** Flymake
(require 'flymake)
(setq flymake-gui-warnings-enabled nil)
(global-set-key (kbd "C-c f") 'flymake-display-err-minibuf)
(global-set-key (kbd "C-c f") 'flymake-display-err-menu-for-current-line)
(global-set-key (kbd "C-c d") 'flymake-goto-next-error)
(add-hook 'find-file-hook 'flymake-find-file-hook)
;(set-face-background 'flymake-errline  "red4")
;(set-face-foreground 'flymake-errline  "black")
;(set-face-background 'flymake-warnline "yellow")
;(set-face-foreground 'flymake-warnline "black")

;;; *** Flymake Extentions
(when (require 'flymake-extension nil t)
  (setq flymake-extension-auto-show t))

;;; **** Flymake on Anything
(setq anything-c-source-flymake
  '((name . "Flymake")
    (init . (lambda ()
              (setq anything-flymake-err-list
                    (loop for err-info in flymake-err-info
                          for err = (nth 1 err-info)
                          append err))))
    (candidates
     . (lambda ()
         (mapcar
          (lambda (err)
            (let* ((text (flymake-ler-text err))
                   (line (flymake-ler-line err)))
              (cons (format "[%s] %s" line text) err)))
          anything-flymake-err-list)))
    (action
     . (("Goto line"
         . (lambda (candidate)
             (goto-line (flymake-ler-line candidate)
                        anything-current-buffer)))))))

(defun anything-flymake ()
  "Displays the error/warning for the current line in Anything"
  (interactive)
  (something (list anything-c-source-flymake)))

;;; **** Flymake on Popup tooltip
(defun flymake-display-err-menu-for-current-line ()
  (interactive)
  (let* ((line-no (flymake-current-line-no))
         (line-err-info-list (nth 0 (flymake-find-err-info
                                     flymake-err-info line-no))))
    (when line-err-info-list
      (let* ((count (length line-err-info-list))
             (menu-item-text nil))
        (while (> count 0)
          (setq menu-item-text (flymake-ler-text (nth (1- count)
                                                      line-err-info-list)))
          (let* ((file (flymake-ler-file (nth (1- count) line-err-info-list)))
                 (line (flymake-ler-line (nth (1- count) line-err-info-list))))
            (if file
                (setq menu-item-text
                      (concat menu-item-text " - " file
                                             "(" (format "%d" line) ")"))))
          (setq count (1- count))
          (if (> count 0)
              (setq menu-item-text (concat menu-item-text "\n"))))
        (popup-tip menu-item-text)))))

;;; **** Flymake on Minibuffer
;(defun flymake-display-err-minibuf ()
;  "Displays the error/warning for the current line in the minibuffer"
;  (interactive)
;  (let* ((line-no
;          (flymake-current-line-no))
;         (line-err-info-list
;          (nth 0 (flymake-find-err-info flymake-err-info line-no)))
;         (count
;          (length line-err-info-list)))
;    (while (> count 0)
;      (when line-err-info-list
;        (let* ((file      (flymake-ler-file
;                           (nth (1- count) line-err-info-list)))
;               (full-file (flymake-ler-full-file
;                           (nth (1- count) line-err-info-list)))
;               (text      (flymake-ler-text
;                           (nth (1- count) line-err-info-list)))
;               (line      (flymake-ler-line
;                           (nth (1- count) line-err-info-list))))
;          (message "[%s] %s" line text)))
;      (setq count (1- count)))))
