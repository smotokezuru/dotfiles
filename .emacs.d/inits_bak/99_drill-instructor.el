;;; ** Drill Instructor
;;   (install-elisp "http://trac.codecheck.in/share/export/1284/lang/elisp/drill-instructor/trunk/drill-instructor.el")
(when (require 'drill-instructor nil t)
  (drill-instructor t)
  (if (require 'diminish nil t)
      (diminish 'drill-instructor)))
