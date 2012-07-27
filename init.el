(setq url-proxy-services '(("no_proxy" . "work\\.com")
                          ("http" . "p-goodway:3128")))

(cd "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d")
;; Hide GUI Stuff early
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(mapc 'require '(uniquify hl-package hl-misc hl-defuns hl-win hl-keys))


(setq org-log-done t)
