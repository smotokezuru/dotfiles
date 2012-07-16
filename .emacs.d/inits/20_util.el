;;; * Convinience

;;; ** Emacs Init Check
(when (require 'emacs-init-check nil t)
  ;; 以下のディレクトリにあるファイルのみ有効にする
  (setq auto-emacs-init-check-file-regexp ""/\\.emacs\\.d/"")
  ;; unixならばniceコマンドがあるので、ゆったりと動作させる
  (add-to-list 'auto-emacs-init-check-program-args "nice")
  ;; VCにコミットされたときに自動でチェック
  (add-hook 'vc-checkin-hook 'auto-emacs-init-check))

;;; ** Linum
;(install-elisp "http://stud4.tuwien.ac.at/~e0225855/linum/linum.el")
(if (require 'linum nil t) (global-linum-mode))



