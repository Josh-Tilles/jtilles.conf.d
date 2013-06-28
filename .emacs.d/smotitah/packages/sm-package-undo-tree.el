;;;; Package undo-tree
(sm-package undo-tree
            ;;:package-manager "el-get"
            :unmanaged-p t)

;; (I expect the `diminish' feature to already be loaded.)

(when global-undo-tree-mode
  (diminish 'undo-tree))

(sm-provide :package undo-tree)
