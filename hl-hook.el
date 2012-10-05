(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

(provide 'hl-hook)
