(defun set-font (font-name size)
  "Set the font only if it exists "
  (if (member font-name (font-family-list))
      (progn (message (concat "Setting font " font-name))
             (set-face-attribute 'default nil :font (concat font-name "-" (number-to-string size))))
    (message (concat "No such font as " font-name))))


(defun comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
        If no region is selected and current line is not blank and we are not at the end of the line,
        then comment current line.
        Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))

(provide 'hl-defuns)
