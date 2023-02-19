
(defun load-init ()
  (interactive)
  (load "~/.emacs.d/init.el"))


(defun my-split-right()
  (interactive)
  (split-window-right)
  (other-window 1))

(defun my-split-below()
  (interactive)
  (split-window-below)
  (other-window 1))


