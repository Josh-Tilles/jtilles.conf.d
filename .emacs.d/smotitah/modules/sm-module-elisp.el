;;;; Module MODULE-NAME
(sm-module elisp
           :unmanaged-p nil
           ;:require-packages '(elisp-slime-nav)
	   )

(sm-module-pre (elisp)
  ;; TODO insert your pre-package-initialization code here
  )

(sm-module-post (elisp)
  
  (add-hook 'emacs-lisp-mode-hook #'turn-on-eldoc-mode)

  ;; Enable SLIME-like navigation with M-. and M-,
  (add-hook 'emacs-lisp-mode-hook #'elisp-slime-nav-mode)
  (add-hook 'ielm-mode-hook       #'elisp-slime-nav-mode)
  
  ;; for some reason, the `prog-mode' keybindings aren't coming through...
  (bind-key "C-j" #'newline emacs-lisp-mode-map)
  (bind-key "RET" #'newline-and-indent emacs-lisp-mode-map)

  )

(sm-provide :module elisp)
               
               
               
