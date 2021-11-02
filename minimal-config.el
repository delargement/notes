(with-eval-after-load 'ox
  (require 'ox-hugo))
(setq make-backup-files nil)
(setq org-latex-packages-alist '(("" "siunitx" t) ("" "physics" t) ("" "bm" t)))
(setq org-hugo-base-dir "~/hugo/")
(setq org-hugo-default-section-directory "posts")
