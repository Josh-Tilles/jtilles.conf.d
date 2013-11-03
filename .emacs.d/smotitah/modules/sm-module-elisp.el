;;;; Module MODULE-NAME
(sm-module elisp
           :unmanaged-p nil
           ;:require-packages '(elisp-slime-nav smartparens)
           )

(sm-module-pre (elisp)
  ;; TODO insert your pre-package-initialization code here
  )

(sm-module-post (elisp)
  
  (add-hook 'emacs-lisp-mode-hook #'turn-on-eldoc-mode)

  ;; Enable SLIME-like navigation with M-. and M-,
  (add-hook 'emacs-lisp-mode-hook #'elisp-slime-nav-mode)
  (add-hook 'ielm-mode-hook       #'elisp-slime-nav-mode)

  ;; Since I want `elisp-slime-nav-mode' to be on whenever
  ;; I'm doing _anything_ in Emacs Lisp, its making itself
  ;; known in the modeline is unnecessary.
  (eval-after-load 'elisp-slime-nav
    '(diminish 'elisp-slime-nav-mode))

  (add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode)

  )

(sm-provide :module elisp)
               
               
               
