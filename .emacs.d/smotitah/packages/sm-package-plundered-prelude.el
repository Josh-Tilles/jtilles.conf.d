;;;; Package plundered-prelude
(sm-package plundered-prelude
            :package-manager nil
            :unmanaged-p t)

;; from /init.el
(defun prelude:add-subfolders-to-load-path (parent-dir)
  "Add all first level PARENT-DIR subdirs to the `load-path'."
  (dolist (f (directory-files parent-dir))
    (let ((name (expand-file-name f parent-dir)))
      (when (and (file-directory-p name)
                 (not (equal f ".."))
                 (not (equal f ".")))
        (add-to-list 'load-path name)))))

;; C-c o 'prelude-open-with
;; [(control shift return)] 'prelude-smart-open-line-above
;; [(control shift up)] 'prelude-move-line-up
;; [(control shift down)] 'relude-move-line-down
;; [(meta shift up)] 'prelude-move-line-up
;; [(meta shift down)] 'prelude-move-line-down
;; C-c n 'prelude-cleanup-buffer
;; C-c f 'prelude-recentf-ido-find-file
;; ?? C-c e 'prelude-eval-and-replace
;; C-c s 'prelude-swap-windows
;; ?? C-c D 'prelude-delete-file-and-buffer
;; ?? C-c d 'prelude-duplicate-current-line-or-region
;; C-c r 'prelude-rename-file-and-buffer
;; C-c t 'prelude-visit-term-buffer
;; C-c h 'helm-prelude

;; depends on Projectile (+ more?)
;; from prelude-editor.el
(defun helm-prelude ()
  "Preconfigured `helm'."
  (interactive)
  (condition-case nil
      (if (projectile-project-root)
          ;; add project files and buffers when in project
          (helm-other-buffer '(helm-c-source-projectile-files-list
                               helm-c-source-projectile-buffers-list
                               helm-c-source-buffers-list
                               helm-c-source-recentf
                               helm-c-source-buffer-not-found)
                             "*helm prelude*")
        ;; otherwise fallback to helm-mini
        (helm-mini))
    ;; fall back to helm mini if an error occurs (usually in projectile-project-root)
    (error (helm-mini))))


(sm-provide :package plundered-prelude)
