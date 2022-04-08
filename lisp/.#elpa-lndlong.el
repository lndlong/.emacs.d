1341Swiper: 
8   
9   ;; 软件安装配置
10  (setq package-check-signature nil) ;; 关闭签名检验
11  
12  
13  (require 'package-lndlong)
14  
15  ;; 初始化包管理器
16  (unless (bound-and-true-p package-initialized)