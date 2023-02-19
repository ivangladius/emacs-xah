
(require 'workgroups)

(workgroups-mode 1)

(wg-toggle-morph)


(define-key xah-fly-leader-key-map (kbd "w c") 'wg-create-workgroup)
(define-key xah-fly-leader-key-map (kbd "w p") 'wg-switch-right)
(define-key xah-fly-leader-key-map (kbd "w n") 'wg-switch-left)
(define-key xah-fly-leader-key-map (kbd "w i") 'wg-switch-to-workgroup)

(define-key xah-fly-leader-key-map (kbd "w u") 'wg-update-workgroup)
(define-key xah-fly-leader-key-map (kbd "w r") 'wg-revert-workgroup)


(define-key xah-fly-leader-key-map (kbd "w l") 'wg-load)
(define-key xah-fly-leader-key-map (kbd "w s") 'wg-save)
(define-key xah-fly-leader-key-map (kbd "w d") 'wg-dired)
