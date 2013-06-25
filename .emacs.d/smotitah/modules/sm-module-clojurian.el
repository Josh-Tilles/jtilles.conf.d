;;;; Module clojurian
(sm-module clojurian
           :unmanaged-p nil
           :require-packages '(clojure-mode nrepl align-cljlet))

(sm-module-pre (clojurian)
  ;; TODO insert your pre-package-initialization code here
  )

(sm-module-post (clojurian)
  ;; TODO insert your post-package-initialization code here
  )

(sm-provide :module clojurian)
