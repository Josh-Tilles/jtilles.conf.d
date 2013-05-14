;; imitate devblog.avdi.org/2011/09/08/emacs-reboot-4-customizing-customization
(defvar jpt:emacs-init-file load-file-name
  "Enables the ability to refer to relative paths")
(defvar jpt:emacs-config-dir
  (file-name-directory jpt:emacs-init-file)
  "The configuration directory, defined relative to `jpt:emacs-init-file'.")

(defconst +CUSTOM_FILE-NAME+ "custom.el"
  "The name of the file that holds my customizations.")
;; Other possible names are `customizations.el',
;; (Common Lisp has the convention of bookending names of constants with `+'.)

(set 'custom-file (expand-file-name +CUSTOM_FILE-NAME+ jpt:emacs-config-dir))
;;(load custom-file 'no-error)
(load custom-file) ; squawk if it doesn't exist


(defun jpt:bootstrap-el-get ()
  (add-to-list 'load-path 
	       (concat jpt:emacs-config-dir "el-get/el-get"))
  ;; copied 'n pasted from the el-get README
  (unless (require 'el-get nil 'noerror)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
      (goto-char (point-max))
      (eval-print-last-sexp))))

(jpt:bootstrap-el-get)
;;(el-get 'sync) ;set up ALL THE THINGS


;; Make sure Emacs knows to prefer a newer *.el over an older *.elc.
(el-get 'sync '(packed auto-compile))
(auto-compile-on-save-mode 1)
(auto-compile-on-load-mode 1)
;; @TODO alternate idea is make auto-compile & packed
;; the ONLY Git submodules. Then I really could load them first.
;; (Though it would be best if they just became a part of Emacs core.)


;; a few packages are special, like el-get, smotitah, use-package, and ...?
;; and so I configure them here, at the "top level".


(el-get 'sync 'use-package)
;; The `bind-key' package is (currently) distributed as a part of jwiegley's
;; `use-package', but I want to use it in my configuration as though it was
;; native. In order to do that, I load it early in the configuration process.
(require 'bind-key)


;; Set up the smotitah configuration framework
(el-get 'sync 'smotitah)
(add-hook 'after-init-hook #'sm-initialize)
;; So `sm-initialize' will run *after* `package-initialize'

(defvar jpt:packages-I-expect-to-be-installed
  '(smex 
    ido-vertical-mode 
    projectile
    s
    dash))

;;;;;; (added as per recommendation from `auto-compile' documentation)
;; Local Variables:
;; no-byte-compile: t
;; End:
