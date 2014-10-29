;; Remove useless spaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Make script executable on save
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; Fix PHP arrays indentation
(add-hook 'php-mode-hook (lambda ()
			   (defun ywb-php-lineup-arglist-intro (langelem)
			     (save-excursion
			       (goto-char (cdr langelem))
			       (vector (+ (current-column) c-basic-offset))))
			   (defun ywb-php-lineup-arglist-close (langelem)
			     (save-excursion
			       (goto-char (cdr langelem))
			       (vector (current-column))))
			   (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
			   (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)))


;; Fix python-mode tab
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode t)
	    (setq tab-width 4)
	    (setq python-indent 4)))


(provide 'hl-hook)
