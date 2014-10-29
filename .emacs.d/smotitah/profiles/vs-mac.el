;;; smotitah: profile vs-mac

;;; Uncomment this if this profile should not use smotitah's
;;; module-loading capabilities.
;; (setq sm-unmanaged-profile t)


;;; Delete this block if the profile is unmanaged
(sm-profile-pre (vs-mac)
  ;; TODO write the code to be executed BEFORE the modules are loaded
  (setq-default sql-product 'postgres)
  ;; could also do (eval-after-load "sql" '(sql-set-product 'postgres))
  )

;;; Delete this block if the profile is unmanaged
;; TODO: add the modules you want to load here
(sm-require-modules "base"
                    "elisp"
                    ;;"pythonista"
                    "clojurian"
                    "UI")

;;; Delete this block if the profile is unmanaged
(sm-profile-post (vs-mac)
  ;; TODO write the code to be executed AFTER the modules are loaded
  )

;;;; sm-base-profile end.
