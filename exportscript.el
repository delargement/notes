(add-to-list 'load-path "./ox-hugo/")
(load-file "./minimal-config.el")
(require 'seq)
(require 'ox-hugo)
(defvar *blacklisted-dirs* (seq-filter (lambda (fi)
                                         (not (member fi '("math" "physics" "prog"))))
                                       (mapcar #'file-name-nondirectory (directory-files "." t))))
(defun walk-directory (file func)
  (defun walk (file)
    (print file)
      (if (file-directory-p file)
          (mapcar (lambda (f)
                    (funcall #'walk f))
                  (seq-filter (lambda (fi)
                                (not (member (file-name-nondirectory fi) *blacklisted-dirs*)))
                              (directory-files file t)))
          (export-file file)))
  (walk file))

(defun export-file (file)
  (print file)
  (if (equal (file-name-extension file) "org")
    	(progn (with-current-buffer (find-file-noselect file)
                 (org-hugo-export-to-md)))
    nil))

(walk-directory "." #'export-file)
