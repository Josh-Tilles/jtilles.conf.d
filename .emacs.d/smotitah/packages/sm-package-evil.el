;;;; Package evil
(sm-package evil
            ;;:package-manager "el-get"
            :unmanaged-p t)

;;; TODO insert your package initialization code here
(require 'evil)

(bind-key "C-c C-g" #'evil-force-normal-state
          evil-normal-state-map)
(bind-key "C-c C-g" #'evil-normal-state
          evil-insert-state-map)

(sm-provide :package evil)
