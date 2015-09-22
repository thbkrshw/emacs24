(require 'ox-latex)


(setq org-log-done 'time)
(setq org-closed-keep-when-no-todo t)

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)


(add-to-list 'org-latex-packages-alist '("T1" "fontenc"))
(add-to-list 'org-latex-packages-alist '("defaultsans" "droidsans"))
(add-to-list 'org-latex-packages-alist '("defaultmono" "droidmono"))


(add-to-list 'org-latex-packages-alist '("" "listings"))
(add-to-list 'org-latex-packages-alist '("" "color"))




(add-to-list 'org-latex-classes
	     '("doc"
	       "\\documentclass[article,oneside,a4paper]{memoir}"
	       ("\\chapter{%s}" . "\\chapter*{%s}")
	       ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))




;; #+LATEX_HEADER: \usepackage[T1]{fontenc}
;; #+LATEX_HEADER: \usepackage[defaultsans]{droidsans}
;; #+LATEX_HEADER: \usepackage[defaultmono]{droidmono}

;; #+LATEX_HEADER: \renewcommand*\familydefault{\sfdefault}
;; #+LATEX_HEADER: \usepackage[margin=2cm]{geometry}
;; #+LATEX_HEADER: \setlength{\parindent}{0cm}

;; #+LATEX_HEADER: \lstset{basicstyle=\small\ttfamily\selectfont,breaklines=true,numbers=left,frame=tb}




(provide 'hl-org)
