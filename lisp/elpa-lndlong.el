(setq package-enable-at-startup nil)


;; 换源
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;; 软件安装配置
(setq package-check-signature nil) ;; 关闭签名检验




;; 初始化包管理器
(unless (bound-and-true-p package-initialized)
  (package-initialize))

;; 刷新软件源索引
(unless package-archive-contents
  (package-refresh-contents))



(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; 使用Use Page 管理扩展
(setq
 use-package-always-ensure t
 use-package-always-defer t
 use-package-always-demand t
 use-package-expand-minimally t
 use-package-verbose t
 )

;; use-package
(require 'package-lndlong)


(provide 'elpa-lndlong)
