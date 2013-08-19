;;;; Package undo-tree
(sm-package undo-tree
            ;;:package-manager "el-get"
            :unmanaged-p t)

;; (I expect the `diminish' feature to already be loaded.)
(eval-after-load 'undo-tree
  '(diminish 'undo-tree-mode))

(sm-provide :package undo-tree)
