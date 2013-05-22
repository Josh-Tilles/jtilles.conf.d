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
  
  ;; for some reason, the `prog-mode' keybindings aren't coming through...
  (bind-key "C-j" #'newline emacs-lisp-mode-map)
  (bind-key "RET" #'newline-and-indent emacs-lisp-mode-map)

  )

(sm-provide :module elisp)
               
               
               
