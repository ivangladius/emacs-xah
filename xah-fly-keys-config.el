

(require 'xah-fly-keys)

(global-set-key (kbd "<escape>") 'xah-fly-command-mode-activate)

(define-key xah-fly-command-map (kbd "4") 'my-split-below)
(define-key xah-fly-leader-key-map (kbd "4") 'my-split-right)

(define-key xah-fly-leader-key-map (kbd "u") '(lambda ()
						(interactive)
						(xah-save-close-current-buffer)
						(delete-window)))

;; specify a layout
(xah-fly-keys-set-layout "qwerty")


;; possible values
;; adnw , azerty , azerty-be , beopy , bepo , carpalx-qfmlwy , carpalx-qgmlwb , carpalx-qgmlwy , colemak , colemak-dhm , colemak-dhm-angle , colemak-dhk , dvorak , koy , neo2 , norman , programer-dvorak , pt-nativo , qwerty , qwerty-abnt , qwerty-no (qwerty Norwegian) , qwertz , workman

(xah-fly-keys 1)
