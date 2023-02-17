
(defun esp8266/make-app-flash-monitor ()
  (interactive)
  (let ((async-shell-command-buffer nil))
	(projectile-dired)
	(async-shell-command "make app-flash monitor")))


(defun esp8266/make-flash-monitor ()
  (interactive)
  (let ((async-shell-command-buffer nil))
	(projectile-dired)
	(async-shell-command "make flash monitor")))


(defun esp8266/make-app-flash ()
  (interactive)
  (let ((async-shell-command-buffer nil))
	(projectile-dired)
	(async-shell-command "make app-flash")))

(defun esp8266/make-app ()
  (interactive)
  (let ((async-shell-command-buffer nil))
	(projectile-dired)
	(async-shell-command "make app")))

(defun esp8266/make-all ()
  (interactive)
  (let ((async-shell-command-buffer nil))
	(projectile-dired)
	(async-shell-command "make all")))

(defun esp8266/make-flash ()
  (interactive)
  (let ((async-shell-command-buffer nil))
	(projectile-dired)
	(async-shell-command "make flash")))

