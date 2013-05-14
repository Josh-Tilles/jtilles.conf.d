;;;; Package smex
(sm-package smex
            ;;:package-manager "el-get"
            :unmanaged-p t)

;;(require 'smex)
(smex-initialize)
(bind-key "M-x" #'smex)
(bind-key "M-X" #'smex-major-mode-commands)

(sm-provide :package smex)
