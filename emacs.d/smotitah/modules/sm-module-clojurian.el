;;;; Module clojurian
(sm-module clojurian
           :unmanaged-p nil
           :require-packages '(clojure-mode nrepl smartparens align-cljlet))

(sm-module-pre (clojurian)
  ;; TODO insert your pre-package-initialization code here
  )

(sm-module-post (clojurian)
  (add-hook 'clojure-mode-hook #'smartparens-strict-mode)
  )

(sm-provide :module clojurian)
