
(load-theme 'modus-vivendi)


(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(display-time-mode 1)

(setq indent-tabs-mode t)
(setq tab-width 4)

(setq dired-listing-switches "-allht")


(setq mode-line-modes
      (mapcar (lambda (elem)
                (pcase elem
                  (`(:propertize (,_ minor-mode-alist . ,_) . ,_)
                   "")
                  (t elem)))
              mode-line-modes))
