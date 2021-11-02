(require 'seq)

(defun walk-directory (file func)
  (defun walk (file)
      (if (file-directory-p file)
          (mapcar (lambda (f)
                    (funcall #'walk f))
                  (seq-filter (lambda (fi)
                                (not (member (file-name-nondirectory fi) '(".git" "." ".." ".gitignore" "dream-diary" "chemistry" "archive"))))
                              (directory-files file t)))
        (progn
          (export-file file))))
  (walk file))

(defun export-file (file)
  (if (equal (file-name-extension file) "org")
    	(progn (with-current-buffer (find-file-noselect file)
                 (org-hugo-export-to-file)))
    nil))

(load-file "./minimal-config.el")
(walk-directory "." #'export-file)
