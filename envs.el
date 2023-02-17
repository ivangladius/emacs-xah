

(require 'cl-lib)

(defun setenv-scan-string (&optional eval)
  (interactive)
  "Scan shell-string evaluating embedded shell commands with non-nil EVAL."
  (let ((inString (looking-at "\""))
    str-list)
    (if inString (forward-char))
    (while (and
        (not (= (point) (point-max)))
        (or inString (not (looking-at "\n")))
        (not (looking-at "\"")))
      (cond
       ((= (point) (point-max))
        (error "Reached end of buffer while scanning escape character within bash-string"))
       ((looking-at "\\\\")
        (setq str-list (cons "\\" str-list))
        (forward-char))
       ((looking-at "\\$\\$")
        (setq str-list (cons "$$" str-list))
        (forward-char 2))
       ((looking-at "\\$(")
        (setq str-list
              (cons
               (if eval
                   (substring
                    (shell-command-to-string
                     (progn
                       (forward-char)
                       (buffer-substring-no-properties
                        (1+ (point))
                        (progn
                          (forward-sexp)
                          (1- (point))))))
                    nil -1)
                 (buffer-substring-no-properties
                  (point)
                  (progn
                    (forward-char)
                    (forward-sexp)
                    (point))))
               str-list)))
       (t
        (setq str-list
              (cons
               (buffer-substring-no-properties
                (point)
                (progn
                  (or (> (skip-syntax-forward "w ") 0)
                      (forward-char))
                  (point)))
               str-list)))))
    (apply #'concat (nreverse str-list))))

(defvar setenv-from-bashrc-trafo nil
  "Filter for environment variables from shell script files (like ~/.bashrc).
Should be (lambda (var val) val) for unix-like operating systems
and maybe `setenv-from-bashrc-trafo-windows-nt' for windows-like operating systems.")

(setq setenv-from-bashrc-trafo
      (cl-case system-type
    (windows-nt 'setenv-from-bashrc-trafo-winnt)
    (t (lambda (var val) val))))

(defvar setenv-from-bashrc-winnt-trafo-exceptions nil
  "Variables that are not transformed from cygwin-directories to winnt-directories.")

(setq setenv-from-bashrc-winnt-trafo-exceptions '("DISPLAY" "CDHIST_SIZE" "CLIENT_NAME" "COLUMNS" "COMPUTERNAME" "EM_PARENT_PROCESS_ID" "G_SLICE" "LANG" "LC_LANG" "LINES" "LOCATION" "LOGONSERVER" "NO_AT_BRIDGE" "NUMBER_OF_PROCESSORS" "OS" "PAPERSIZE" "PROCESSOR_ARCHITECTURE" "PROCESSOR_IDENTIFIER" "PROCESSOR_LEVEL" "PROCESSOR_REVISION" "SESSIONNAME" "SHELL" "SYSTEMDRIVE" "SYSTEMROOT" "USERDNSDOMAIN" "USERDOMAIN" "USERNAME" "windows_tracing_flags"))

(defun setenv-from-bashrc-trafo-winnt (var val)
  "Replace `:' with `;' and afterwards `/c/' after `;' with `c:'."
  (unless (member var setenv-from-bashrc-winnt-trafo-exceptions)
    (let ((pos 0))
      (while (string-match "[^:;][a-zA-Z]:" val pos)
    (setq pos (match-end 0))
    (aset val (1- pos) ?\;))
      (setq pos 0)
      (while (string-match "\\(?:^\\|;\\)\\(/c/\\)" val pos)
    (setq pos (match-end 1))
    (setq val (replace-match "c:/" t t val 1)))))
  val)

;; Get environment variables:
(defun setenv-from-bashrc (filename)
  "Set environment variables from file FILENAME."
  (interactive "fFile name:")
  (and
   (file-exists-p filename)
   (set-buffer (find-file-noselect filename))
   (save-excursion
     (goto-char (point-min))
     (while (search-forward-regexp "^\\(export \\)?\\([[:alnum:]_]+\\)=" nil 'noErr)
       (let* ((var (match-string-no-properties 2))
          (val (funcall setenv-from-bashrc-trafo var (setenv-scan-string t))))
     (message "Set \"%s\" to \"%s\"." var val)
     (setenv var val 'substitute-env-vars)))))
  (let ((paths (split-string (getenv "PATH") ":" t)))
    (dolist (path paths)
      (add-to-list 'exec-path path))))

	
(setenv-from-bashrc "~/.zshrc")
