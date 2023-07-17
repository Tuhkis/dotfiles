(setq inhibit-startup-message t) ;; No splash scren.
(menu-bar-mode -1) ;; Leave this one on if you're a beginner!
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

(setq-default cursor-type 'bar)

;; Packages stuff
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

