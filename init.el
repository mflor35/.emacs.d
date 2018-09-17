;;; package --- Load all packages
;;; Commentary:
(require 'package)
;;; code:
(setq package-enable-at-startup nil)
(package-initialize)

(require 'diminish)
(require 'bind-key)
;; General Configuration
;; No startup message
(setq inhibit-startup-message t
      truncate-lines t
      user-full-name "Miguel Flores Silverio")
(visual-line-mode t)
;;Start emacs full screen
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; UTF-8 encoding for everything
(prefer-coding-system 'utf-8)
;; No tool bar
(tool-bar-mode -1)
;; No menu bar
;;(menu-bar-mode -1)
;; Show column number
(column-number-mode t)
;; No backups
(setq backup-inhibited t)
;; Disable auto-save
(setq auto-save-default nil)
;; Mouse scroll one line at a time
(setq mouse-wheel-follow-mouse 't)
;; Keyboard scroll one line at a time
(setq scroll-step 1)
;; Line numbers
(global-linum-mode 1)
;; Global electric mode
(electric-pair-mode)
;; Clean white spaces on save
(add-hook 'before-save-hook 'whitespace-cleanup)
;; Tabs for makefiles
(add-hook 'makefile-mode 'indent-tabs-mode)
;; Stop curso from jumping into minibuffer by itself
(setq minibuffer-prompt-properties
      (quote (read-only t point-entered minibuffer-avoid-prompt
			face minibuffer-prompt)))
;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Look and Feel
(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-vibrant t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

;; Font lock customization
;; -----------------------
;; This is an attempt to provide a pleasing, sane and reasonably consistent
;; color scheme across GNU Emacs, XEmacs, Windows, X, and TTY systems.  It
;; also highlights fixme type tags.
;;
(require 'font-lock)
(global-font-lock-mode t)
(add-hook 'font-lock-mode-hook 'font-lock-mode-setup)
(defun font-lock-mode-setup ()
  "Make fixme tags standout."
  (font-lock-add-keywords nil
			  '(("\\<\\(AEK\\|NOTE\\|FIXME\\|TODO\\|XXX\\)\\>:?" 0 'font-lock-warning-face prepend))))
(defun set-colour-theme (theme)
  "THEME Helper function to set a bunch of faces and ignore potential errors from missing faces."
  (mapc (lambda (setting)
	  (condition-case nil
	      (face-spec-set (car setting) (cdr setting))
	    (error t)))
	theme))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (doom-vibrant)))
 '(custom-safe-themes
   (quote
    ("a866134130e4393c0cad0b4f1a5b0dd580584d9cf921617eee3fd54b6f09ac37" "53d1bb57dadafbdebb5fbd1a57c2d53d2b4db617f3e0e05849e78a4f78df3a1b" "2af26301bded15f5f9111d3a161b6bfb3f4b93ec34ffa95e42815396da9cb560" "77c3f5f5acaa5a276ca709ff82cce9b303f49d383415f740ba8bcc76570718b9" "0846e3b976425f142137352e87dd6ac1c0a1980bb70f81bfcf4a54177f1ab495" "b5ecb5523d1a1e119dfed036e7921b4ba00ef95ac408b51d0cd1ca74870aeb14" "4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "6de7c03d614033c0403657409313d5f01202361e35490a3404e33e46663c2596" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" "ed317c0a3387be628a48c4bbdb316b4fa645a414838149069210b66dd521733f" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "3b24f986084001ae46aa29ca791d2bc7f005c5c939646d2b800143526ab4d323" "9122dfb203945f6e84b0de66d11a97de6c9edf28b3b5db772472e4beccc6b3c5" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "90d329edc17c6f4e43dbc67709067ccd6c0a3caa355f305de2041755986548f2" "91faf348ce7c8aa9ec8e2b3885394263da98ace3defb23f07e0ba0a76d427d46" default)))
 '(fci-rule-color "#202325")
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(linum-format " %7i ")
 '(package-selected-packages
   (quote
    (web-mode ng2-mode doom-themes dracula-theme all-the-icons tide cmake-mode which-key xah-fly-keys flycheck-irony magit temp-buffer-browse switch-window sublime-themes smartparens python-mode python-info pylint py-smart-operator popwin neotree irony-eldoc iedit hydra flyspell-popup flyspell-lazy flymake-ruby flymake-python-pyflakes flatui-theme flatland-theme flatland-black-theme evil-nerd-commenter evil-leader ergoemacs-mode emacs-eclim elpy company-irony-c-headers company-irony company-inf-ruby autopair auto-complete-chunk auto-complete-c-headers atom-one-dark-theme atom-dark-theme ample-theme)))
 '(safe-local-variable-values
   (quote
    ((flycheck-clang-language-standard . C++11)
     (flycheck-clang-language-standard . c++11)
     (rpm-change-log-uses-utc . t))))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#1f2124")
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff0000")
     (40 . "#ff4a52")
     (60 . "#f6aa11")
     (80 . "#f1e94b")
     (100 . "#f5f080")
     (120 . "#f6f080")
     (140 . "#41a83e")
     (160 . "#40b83e")
     (180 . "#b6d877")
     (200 . "#b7d877")
     (220 . "#b8d977")
     (240 . "#b9d977")
     (260 . "#93e0e3")
     (280 . "#72aaca")
     (300 . "#8996a8")
     (320 . "#afc4db")
     (340 . "#cfe2f2")
     (360 . "#dc8cc3"))))
 '(vc-annotate-very-old-color "#dc8cc3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; End general config
;; Flycheck
(require 'flycheck)
(global-flycheck-mode)

;; == company-mode ==
(add-hook 'after-init-hook 'global-company-mode)

;; Python (elpy)
(elpy-enable)

;; flyspell
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; Navigating Directories
(require 'all-the-icons)
(require 'neotree)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(global-set-key [f10] 'neotree-toggle)
;; Smartparents
(require 'smartparens-config)
(smartparens-global-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Eldoc
(require 'eldoc)
(setq eldoc-idle-delay 0.1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; electric-operator-modeRATE
(require 'electric-operator)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;;; init.el ends here
