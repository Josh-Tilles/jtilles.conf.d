;;;; Module clojurian
(sm-module clojurian
           :unmanaged-p nil
           :require-packages '(clojure-mode nrepl paredit align-cljlet))

(sm-module-pre (clojurian)
  ;; TODO insert your pre-package-initialization code here
  )

(sm-module-post (clojurian)
  (add-hook 'clojure-mode-hook #'paredit-mode)
  )

(sm-provide :module clojurian)
