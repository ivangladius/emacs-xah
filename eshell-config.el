(add-hook 'emacs-startup-hook 'eshell)

;Clear the eshell buffer.
;; (defun eshell/clear ()      
   ;; (let ((eshell-buffer-maximum-lines 0)) (eshell-truncate-buffer)))


(defun run-this-in-eshell (cmd)
  "Runs the command 'cmd' in eshell."
  (with-current-buffer "*eshell*"
    (end-of-buffer)
    (eshell-kill-input)
    (message (concat "Running in Eshell: " cmd))
    (insert cmd)
    (eshell-send-input)
    (end-of-buffer)
    (eshell-bol)
    (yank)))

(bind-keys*
    ("C-<backspace>" . (lambda () ; clear shell
                     (interactive)
                     (run-this-in-eshell "clear 1"))))
