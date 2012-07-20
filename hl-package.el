(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
'("ELPA" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(smex full-ack sass-mode expand-region ido-ubiquitous php-mode rainbow-mode solarized-theme yaml-mode smex js2-mode dired+ dired-single mark-multiple)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)


(provide 'hl-package)
