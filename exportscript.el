(add-to-list 'load-path "./ox-hugo/")
(load-file "./minimal-config.el")
(require 'seq)
(require 'ox-hugo)

(defun walk-directory (file func)
  (defun walk (file)
      (if (file-directory-p file)
          (mapcar (lambda (f)
                    (funcall #'walk f))
                  (seq-filter (lambda (fi)
                                (member (file-name-nondirectory fi) '("math" "physics" "prog")))
                              (directory-files file t)))
        (progn
          (export-file file))))
  (walk file))

(defun export-file (file)
  (if (equal (file-name-extension file) "org")
    	(progn (with-current-buffer (find-file-noselect file)
                 (org-hugo-export-to-md)))
    nil))

(walk-directory "." #'export-file)
