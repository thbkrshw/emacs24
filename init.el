;; Need connectivity to setup packages
(setq proxy (concat user-emacs-directory "proxy.el"))
(when (file-exists-p proxy) (load proxy))


;; (cd "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d")

;; Hide GUI Stuff early
(dolist (mode '(tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(mapc 'require '(uniquify hl-package hl-misc hl-defuns hl-win hl-keys))


;; Load 
(setq system-config (concat user-emacs-directory system-name ".el"))
(when (file-exists-p system-config) (load system-config))

;;(setq url-proxy-services '(("no_proxy" . "work\\.com")
;;                          ("http" . "p-goodway:3128")))

