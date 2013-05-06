;;;; Module MODULE-NAME
(sm-module elisp
           :unmanaged-p nil
           ;:require-packages '()
	   )

(sm-module-pre (elisp)
  ;; TODO insert your pre-package-initialization code here
  )

(sm-module-post (elisp)
  
  (add-hook 'emacs-lisp-mode-hook #'turn-on-eldoc-mode)
  
  )

(sm-provide :module elisp)
               
               
               
