;;;; Package ace-jump-mode
(sm-package ace-jump-mode
            ;;:package-manager "el-get"
            :unmanaged-p t)

(bind-key "C-c SPC" #'ace-jump-mode)
(bind-key "C-x SPC" #'ace-jump-mode-pop-mark)

(sm-provide :package ace-jump-mode)
