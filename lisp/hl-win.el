(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (menu-bar-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1)
  (set-font "Consolas" 10))

;; (setq solarized-distinct-fringe-background t)
;; (setq solarized-high-contrast-mode-line t)
;; (setq solarized-use-more-italic t)

(load-theme 'darktooth t)
;; (load-theme 'leuven t)
;; (load-theme 'solarized-dark t)

;(global-linum-mode)
(global-hl-line-mode)

(setq scroll-margin 1
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(setq require-final-newline t)
(delete-selection-mode t)

(global-auto-revert-mode t)


;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; saveplace remembers your location in a file when saving files
(require 'saveplace)
; (setq save-place-file (expand-file-name "saveplace" prelude-savefile-dir))
;; activate it for all buffers
(setq-default save-place t)

;; smart mode line
(sml/setup)


(provide 'hl-win)
