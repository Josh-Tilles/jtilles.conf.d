;;;; This module should contain your basic configuration, that will be
;;;; shared by all the profiles - if they include the base module, of
;;;; course!

(sm-module "base"
           ;; add the packages required by your basic configuration here
           :require-packages nil
           ;; set this to t if you want to manage this module yourself
           ;; instead of using the builtin package loading infrastructure
           :unmanaged-p nil)


;;;; Remove these 2 blocks if the module is unmanaged
(sm-module-pre (base)
  ;; TODO Write the code that should be executed BEFORE the packages are initialized
  )

(sm-module-post (base)
  ;; TODO Write the code that should be executed AFTER the packages are initialized
  
  ;;;; `better-defaults' according to Phil Hagelberg (aka Technomancy)
  (bind-key "M-/" #'hippie-expand)
  (bind-key "C-x C-b" #'ibuffer)
  (bind-key "C-s" #'isearch-forward-regexp)
  (bind-key "C-r" #'isearch-backward-regexp)
  (bind-key "C-M-s" #'isearch-forward)
  (bind-key "C-M-r" #'isearch-backward)

  )

(sm-provide :module base)
;;;; End base module
