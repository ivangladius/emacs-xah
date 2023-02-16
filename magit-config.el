
(add-hook 'magit-status-mode-hook
		  (lambda ()
			(define-key xah-fly-command-map (kbd "<space>") 'xah-fly-leader-key-map)

(define-key xah-fly-leader-key-map (kbd "/") 'magit-status)

 
