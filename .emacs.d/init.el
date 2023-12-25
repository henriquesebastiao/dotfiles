; Remover boas vindas
(setq inhibit-startup-message t)

; Remover menus
(tool-bar-mode -1)
(menu-bar-mode -1)

; Remover barra de rolagem
(scroll-bar-mode -1)

; Numeros nas linhas
(global-display-line-numbers-mode)

; Pacotes
(require 'package)
(setq package-enable-at-startup nil) ; desabilitar inicio de ativacao


; MELPA - repositorio
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize) ; iniciar pacotes

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
)

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package auto-complete
  :ensure t
  :init
  :config (ac-config-default)
  :config (global-auto-complete-mode t))

(use-package neotree ; visaO de arvore de diretorios
  :ensure t
  :config
  (progn
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind (("C-\\" . 'neotree-toggle))) ; tecla de atalho

(use-package all-the-icons
  :if (display-graphic-p))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(package-selected-packages '(try)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )