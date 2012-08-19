;;; Uniquify group: Unique buffer names dependent on file name.
;;; 
(when (require 'uniquify nil t)
  (setq uniquify-buffers-name-style 'post-forward-angle-bracket
        uniquify-ignore-buffers-re "*[^*]+*"))
