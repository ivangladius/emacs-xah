;;; stumpwm-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "stumpwm-mode" "stumpwm-mode.el" (0 0 0 0))
;;; Generated autoloads from stumpwm-mode.el

(autoload 'stumpwm-mode "stumpwm-mode" "\
add some bindings to eval code into a running stumpwm using stumpish.

This is a minor mode.  If called interactively, toggle the
`StumpWM mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `stumpwm-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "stumpwm-mode" '("stumpwm-"))

;;;***

;;;### (autoloads nil "stumpwm-utils" "stumpwm-utils.el" (0 0 0 0))
;;; Generated autoloads from stumpwm-utils.el

(register-definition-prefixes "stumpwm-utils" '("modified-buffers-exist" "stumpwm-"))

;;;***

;;;### (autoloads nil nil ("stumpwm-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; stumpwm-mode-autoloads.el ends here
