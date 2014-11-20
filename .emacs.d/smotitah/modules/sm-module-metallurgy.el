;;;; Module metallurgy
(sm-module metallurgy
           :unmanaged-p nil
           :require-packages '())

(sm-module-pre (metallurgy)
  ;; TODO insert your pre-package-initialization code here
  )

;; Putting stuff related to programming C here until I know what
;; package it should go in.
(add-hook 'c-mode-hook (lambda ()
                         (setq indent-tabs-mode t)
                         (setq c-basic-offset 8)))

(sm-module-post (metallurgy)
  ;; TODO insert your post-package-initialization code here
  )

(sm-provide :module metallurgy)
