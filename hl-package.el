(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("ELPA" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(smex full-ack sass-mode expand-region ido-ubiquitous idomenu php-mode rainbow-mode solarized-theme yaml-mode smex js2-mode dired+ dired-single mark-multiple ace-jump-mode coffee-mode)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)


;; Setup php-mode
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode)
	     '("\\.js$" . js2-mode))

;; Load rainbow mode when editing css file
(add-hook 'css-mode-hook 'rainbow-mode)


(require 'dired+)


(provide 'hl-package)
