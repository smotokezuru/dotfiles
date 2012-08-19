;;; Moccur Edit
;;; (auto-install-from-emacswiki "moccur-edit.el")
(require 'moccur-edit nil t)

;; 編集を終了したときにファイルを自動保存する
(defadvice moccur-edit-change-file
  (after save-after-moccur-edit-buffer activate)
  (save-buffer))
