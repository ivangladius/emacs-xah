

(require 'ido)
;; (require 'ido-vertical-mode)


(define-key xah-fly-leader-key-map (kbd "i e") 'ido-find-file)
(define-key xah-fly-command-map (kbd "a") 'smex)
(global-set-key (kbd "M-x") 'smex)

(ido-mode 1)

(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-vertical-show-count t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(setq ido-use-faces t)
;; (set-face-attribute 'ido-vertical-only-match-face nil
                    ;; :foreground "yellow")


;; (ido-vertical-mode 1)
