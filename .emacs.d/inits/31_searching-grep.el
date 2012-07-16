;;;; Grep

;;; Igrep: An improved interface to `grep` and `find`.
;;;  (install-elisp-from-emacswiki "igrep.el")
;;; lv 付属の lgrep を使い、-Ou8 オプションで出力を UTF-8 にする
(require 'igrep)
(igrep-define lgrep
              (igrep-use-zgrep nil)
              (igrep-regex-option "-n -Ou8"))
(igrep-find-define lgrep
              (igrep-use-zgrep nil)
              (igrep-regex-option "-n -Ou8"))

;;; Grep a lot: 複数の *grep* バッファを扱う
;;; (install-elisp-from-emacswiki "grep-a-lot.el")
(require 'grep-a-lot)
(grep-a-lot-setup-keys)
(grep-a-lot-advise igrep)

;;; *** Grep Edit
;;;  (install-elisp-from-emacswiki "grep-edit.el")
(require 'grep-edit)

