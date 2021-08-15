
(require 'seq)


(defun walk-directory (file func)
  (defun walk (file)
      (if (file-directory-p file)
          (mapcar (lambda (f)
                    (funcall #'walk f))
                  (seq-filter (lambda (fi)
                                (not (member (file-name-nondirectory fi) '(".git" "." ".." ".gitignore" "dream-diary" "chemistry"))))
                              (directory-files file t)))
        (progn
          (export-file file))))
  (walk file))

(defun export-file (file)
  (let ((infile (replace-regexp-in-string ".org" ".html" file))
        (outfile (replace-regexp-in-string ".org" ".html"
                                           (replace-regexp-in-string "notes/" "notes/exports/" file))))
    (if (equal (file-name-extension file) "org")
    	(progn (with-current-buffer (find-file-noselect file)
                 (make-directory (file-name-directory outfile) t)
                 (org-export-to-file 'html outfile)))
    nil)))

(load-file "./minimal-config.el")
(walk-directory "/home/spongiforma/documents/notes/" #'export-file)
