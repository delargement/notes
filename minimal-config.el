(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '(\"melpa\" . \"http://melpa.milkbox.net/packages/\") t)
(add-to-list 'package-archives
             '(\"marmalade\" . \"http://marmalade-repo.org/packages/\") t)
;; Fix HTTP1/1.1 problems
(setq url-http-attempt-keepalives nil)
(package-refresh-contents)
(package-install 'ox-hugo)
(with-eval-after-load 'ox
  (require 'ox-hugo))
(setq make-backup-files nil)
(setq org-latex-packages-alist '(("" "siunitx" t) ("" "physics" t) ("" "bm" t)))
(setq org-hugo-base-dir ".")
(setq org-hugo-default-section-directory "posts")
