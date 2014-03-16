;;; "Emacs テクニックバイブル" 12.6 参照
;;; *Help* バッファにメモを書き込めるようにする
;;; (auto-install-from-emacswiki "usage-memo.el")
(when (require 'usage-memo nil t)
  (setq umemo-base-directory "~/.emacs.d/etc/usage-memo")
  (umemo-initialize))
