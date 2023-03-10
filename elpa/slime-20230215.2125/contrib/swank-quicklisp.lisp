;;; swank-quicklisp.lisp -- Quicklisp support
;;
;; Authors: Matthew Kennedy <burnsidemk@gmail.com>
;; License: Public Domain
;;

(in-package :swank)

(defslimefun list-quicklisp-systems ()
  "Returns the Quicklisp systems list."
  (if (member :quicklisp *features*)
      (let ((ql-dist-name (find-symbol "NAME" "QL-DIST"))
            (ql-system-list (find-symbol "SYSTEM-LIST" "QL"))
	    (ql-local-systems (find-symbol "LIST-LOCAL-SYSTEMS" "QL")))
        (append (mapcar ql-dist-name (funcall ql-system-list))
		(funcall ql-local-systems)))
      (error "Could not find Quicklisp already loaded.")))

(provide :swank-quicklisp)
