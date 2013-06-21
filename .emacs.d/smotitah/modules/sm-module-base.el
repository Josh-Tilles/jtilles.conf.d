;;;; This module should contain your basic configuration, that will be
;;;; shared by all the profiles - if they include the base module, of
;;;; course!

(sm-module "base"
           ;; add the packages required by your basic configuration here
           :require-packages '(smex
                               ido-ubiquitous
                               expand-region)
           ;; set this to t if you want to manage this module yourself
           ;; instead of using the builtin package loading infrastructure
           :unmanaged-p nil)


;;;; Remove these 2 blocks if the module is unmanaged
(sm-module-pre (base)
  ;; TODO Write the code that should be executed BEFORE the packages are initialized
  )

(sm-module-post (base)
  ;; TODO Write the code that should be executed AFTER the packages are initialized

  ;; Sets $MANPATH, $PATH, and `exec-path' from my shell, but only on OS X.
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))
  
  ;;;; `better-defaults' according to Phil Hagelberg (aka Technomancy)
  (bind-key "M-/" #'hippie-expand)
  (bind-key "C-x C-b" #'ibuffer)
  (bind-key "C-s" #'isearch-forward-regexp)
  (bind-key "C-r" #'isearch-backward-regexp)
  (bind-key "C-M-s" #'isearch-forward)
  (bind-key "C-M-r" #'isearch-backward)

  ;; http://irreal.org/blog/?p=1781
  (bind-key "C-h C-f" #'find-function)
  (bind-key "C-h C-k" #'find-function-on-key)
  (bind-key "C-h C-v" #'find-variable)
  (bind-key "C-h C-l" #'find-library)

  ;; swap defaults of RET and C-j
  (bind-key "C-j" #'newline prog-mode-map)
  (bind-key "RET" #'newline-and-indent prog-mode-map)
  ;; many places recommend `reindent-then-newline-and-indent' instead.

  )

(sm-provide :module base)
;;;; End base module
