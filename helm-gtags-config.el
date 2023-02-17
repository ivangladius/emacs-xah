

(add-hook 'c-mode-hook 'c++-mode-hook (lambda ()
					(helm-gtags-mode)))

(define-key xah-fly-leader-key-map (kbd "0 d") 'helm-gtags-dwim)
				    
