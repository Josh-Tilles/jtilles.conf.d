;;;; Package plundered-Emacs-Live
(sm-package plundered-Emacs-Live
            :package-manager nil
            :unmanaged-p t)

;;;; plundered from `live-core.el'
(defun live:filter (condp lst)
  (delq nil
        (mapcar (lambda (x) (when (funcall condp x)
                              x))
                lst)))
;; @TODO refactor this to use magnars's dash lib

(defun live:list-buffer-paths ()
  (mapcar #'file-truename (live:filter 'identity
                                       (mapcar (lambda (b) (buffer-file-name b))
                                               (buffer-list)))))
;; @TODO refactor this to use magnars's dash lib

(defun live:list-buffer-names ()
  (live:filter 'identity (mapcar (lambda (el) (buffer-name el))
                                 (buffer-list))))
;; @TODO refactor this to use magnars's dash lib

(defun live:file-open-as-buffer? (path)
  (if (member (file-truename path)
              (live:list-buffer-paths))
      t
    nil))
;; @TODO can "splice-up" the call to `member'?

(defun live:find-buffer-by-path (path)
  (car (live:filter (lambda (b)
                      (equal (file-truename path)
                             (file-truename (or (buffer-file-name b)
                                                "/dev/null"))))
                    (buffer-list))))
;; @TODO refactor to use magnars's dash lib

(defun live:empty? (seq)
  (eq 0 (length seq)))

(defun live:alist-keys (alist)
  (mapcar (lambda (el) (car el))
          alist))

(defun live:alist-vals (alist)
  (mapcar (lambda (el) (cadr el))
          alist))

(defun live:byte-recompile-directory-sl (directory &optional arg force follow-symlinks?)
  "Recompile every `.el' file in DIRECTORY that needs recompilation.
This happens when a `.elc' file exists but is older than the `.el' file.
Files in subdirectories of DIRECTORY are processed also.

If the `.elc' file does not exist, normally this function *does not*
compile the corresponding `.el' file. However, if the prefix argument
ARG is 0, that means do compile all those files. A nonzero
ARG means ask the user, for each such `.el' file, whether to
compile it. A nonzero ARG also means ask about each subdirectory
before scanning it.

If the third argument FORCE is non-nil, recompile every `.el' file
that already has a `.elc' file.

If the fourth argument FOLLOW-SYMLINKS? is non-nil, follow symlinks in
children of DIRECTORY."
  (interactive "DByte recompile directory: \nP")
  ;; @TODO explain what this interactive command does.
  (if arg (setq arg (prefix-numeric-value arg)))
  (if noninteractive
      nil
    (save-some-buffers)
    (force-mode-line-update))
  (with-current-buffer (get-buffer-create byte-compile-log-buffer)
    (setq default-directory (expand-file-name directory))
    ;; compilation-mode copies value of default directory.
    (unless (eq major-mode 'compilation-mode)
      (compilation-mode))
    (let ((directories (list default-directory))
          (default-directory default-directory)
          (skip-count 0)
          (fail-count 0)
          (file-count 0)
          (dir-count 0)
          last-dir)
      (displaying-byte-compile-warnings
       (while directories
         (setq directory (car directories))
         (message "Checking %s..." directory)
         (cl-dolist (file (directory-files directory))
           (let ((source (expand-file-name file directory)))
             (if (and (not (member file '("RCS" "CVS")))
                      (not (eq ?\. (aref file 0)))
                      (file-directory-p source)
                      (if follow-symlinks?
                          t
                        (not (file-symlink-p source))))
                 ;; This file is a subdirectory. Handle them differently.
                 (when (or (null arg) (eq 0 arg)
                           (y-or-n-p (concat "Check " source "? ")))
                   (setq directories (nconc directories (list source))))
               ;; It is an ordinary file. Decide whether to compile it.
               (if (and (string-match emacs-lisp-file-regexp source)
                        (file-readable-p source)
                        (not (auto-save-file-name-p source))
                        (not (string-equal dir-locals-file
                                           (file-name-nondirectory source))))
                   (progn (case (byte-recompile-file source force arg)
                            (no-byte-compile (setq skip-count (1+ skip-count)))
                            ((t) (setq file-count (1+ file-count)))
                            ((nil) (setq fail-count (1+ fail-count))))
                          (or noninteractive
                              (message "Checking %s..." directory))
                          (if (not (eq last-dir directory))
                              (setq last-dir directory
                                    dir-count (1+ dir-count)))
                          )))))
         (setq directories (cdr directories))))
      (message "Done (Total of %d file%s compiled%s%s%s)"
               file-count (if (= file-count 1) "" "s")
               (if (> fail-count 0) (format ", %d failed" fail-count) "")
               (if (> skip-count 0) (format ", %d skipped" skip-count) "")
               (if (> dir-count 1)
                   (format " in %d directories" dir-count) "")))))
    

(defun live:user-first-name ()
  (let* ((first-name (car (split-string user-full-name))))
    (if first-name
        (capitalize first-name)
      "")))

(defun live:user-first-name? ()
  (not (string-equal "" (live:user-first-name))))

(defun live:server-kill-terminal ()
  (interactive)
  "Kill the current client without offering to save the current
buffers. Useful if you want to quickly exit but have a server
running in the background"
  (let ((proc (frame-parameter (selected-frame) 'client)))
    (cond ((processp proc)
           (server-delete-client proc))
          (t (error "Could not kill terminal: invalid client frame")))))

(defun live:persistent-scratch-buffer ()
  "Create a new persistent empty buffer (i.e. saved as a file)"
  (interactive)
  (let* ((id (concat "pscratch-" (uuid-string)))
         (fname (concat live:pscratch-dir id))
         (buf (get-buffer-create id)))
    (switch-to-buffer buf)
    (with-current-buffer buf
      (write-file fname)
      (auto-save-mode 1))))

;;;; plundered from Emacs-Live's `init.el'.
(defvar live:welcome-messages
  (if (live:user-first-name?)
      (list (concat "Hello " (live:user-first-name) ", somewhere in the world the sun is shining for you right now.")
            (concat "Hello " (live:user-first-name) ", it's lovely to see you again. I do hope that you're well.")
            (concat (live:user-first-name) ", turn your head towards the sun and the shadows will fall behind you.")
            )
    (list "Hello, somewhere in the world the sun is shining for you right now."
          "Hello, it's lovely to see you again. I do hope that you're well."
          "Turn your head towards the sun and the shadows will fall behind you.")))

(defun live:welcome-message ()
  (nth (random (length live:welcome-messages))
       live:welcome-messages))

(defun live:cleanup-whitespace ()
  "remove all trailing whitespace and trailing blank lines before
saving the file"
  (let ((whitespace-style '(trailing empty)) )
    (whitespace-cleanup)))

;;; from the "foundation-pack"'s `util-fns'
(defun live:insert-date ()
  "Insert a time-stamp according to locale's date and time format."
  (interactive)
  (insert (format-time-string "%c" (current-time))))

(defun live:delete-this-buffer-and-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (when (yes-or-no-p "Are you sure you want to remove this file? ")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' successfully removed" filename)))))




(defun live:delete-whitespace-except-one ()
  (interactive)
  (just-one-space -1))

(sm-provide :package plundered-Emacs-Live)
