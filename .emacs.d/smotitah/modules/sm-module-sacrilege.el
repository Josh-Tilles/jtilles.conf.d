;;;; Module sacrilege
(sm-module sacrilege
           :unmanaged-p nil
           :require-packages '(evil))

(sm-module-pre (sacrilege)
  ;; TODO insert your pre-package-initialization code here
  )

(sm-module-post (sacrilege)
  (evil-mode)
  )

(sm-provide :module sacrilege)
               
               
               
