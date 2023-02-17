
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(when (daemonp)
  (exec-path-from-shell-initialize))

(setq inferior-lisp-program "sbcl")

(load "~/.emacs.d/envs")

(load "~/.emacs.d/settings")

(load "~/.emacs.d/scripts")

(load "~/.emacs.d/xah-fly-keys-config")

(load "~/.emacs.d/projectile-config")

(load "~/.emacs.d/company-config")

;; (load "~/.emacs.d/helm-config")

(load "~/.emacs.d/ido-config")

(load "~/.emacs.d/helm-swoop")

(load "~/.emacs.d/tree-sitter-config")


;; (load "~/.emacs.d/helm-imenu")

(load "~/.emacs.d/ido-imenu")

;; (load "~/.emacs.d/helm-gtags-config")

(load "~/.emacs.d/magit-config")

(load "~/.emacs.d/eshell-config")


;; PROGRAMMING



;; PROGRAMMING

;; LSP & STUFF

(load "~/.emacs.d/ggtags-config")

;;   EMBEDDED SYSTEMS

;;     ESP8266
(load "~/.emacs.d/esp8266-config")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(async-shell-command-buffer 'confirm-kill-process)
 '(custom-enabled-themes '(modus-vivendi))
 '(custom-safe-themes
   '("b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "fa49766f2acb82e0097e7512ae4a1d6f4af4d6f4655a48170d0a00bcb7183970" "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b" "19a2c0b92a6aa1580f1be2deb7b8a8e3a4857b6c6ccf522d00547878837267e7" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" "f5b6be56c9de9fd8bdd42e0c05fecb002dedb8f48a5f00e769370e4517dde0e8" "efcecf09905ff85a7c80025551c657299a4d18c5fcfedd3b2f2b6287e4edd659" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" default))
 '(package-selected-packages
   '(lsp-mode company-c-headers tree-sitter-langs tree-sitter rust-mode ggtags smex helm-cscope company gruvbox-theme solarized-theme vterm competitive-programming-snippets rtags magit projectile which-key quickrun slime sly xah-fly-keys helm))
 '(warning-suppress-log-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 143 :width normal :foundry "ADBO" :family "Terminus")))))
