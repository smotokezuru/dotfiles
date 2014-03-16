;;; ** Dmacro
;;; http://www.pitecan.com/DynamicMacro/dmacro.el
(defconst *dmacro-key* (kbd "C-t") "Dmacro Key")
(global-set-key *dmacro-key* 'dmacro-exec)
(autoload 'dmacro-exec "dmacro" nil t)
