(show-paren-mode 1)
(setq visible-bell 'top-bottom)
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

;; Abbreviation
;;(setq save-abbrevs t)

;; Ace jump mode
(autoload 'ace-jump-mode "ace-jump-mode" "Emacs quick move minor mode" t)
(define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)

;; Org-mode
;(setq org-log-done t)
;(define-key global-map "\C-cl" 'org-store-link)
;(define-key global-map "\C-ca" 'org-agenda)


;; Backup management
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs.d/backup"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 1
   kept-old-versions 1
   version-control t)       ; use versioned backups



;; Tramp default configuration
(when (string-equal "windows-nt" system-type) (setq tramp-default-method "plink"))


;; Pretty lambda
(font-lock-add-keywords
 'js2-mode `(("\\(function *\\)("
	     (0 (progn (compose-region (match-beginning 1)
				       (match-end 1) "\u0192")
		       nil)))))


;; Uniquify conf
(setq uniquify-buffer-name-style 'forward)

(provide 'hl-misc)
