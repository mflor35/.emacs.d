;;; package --- Load all packages
;;; Commentary:
(require 'package)
;;; code:
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
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
(menu-bar-mode -1)
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
;; Key shortcuts and keybindings
(require 'xah-fly-keys)
(xah-fly-keys-set-layout "qwerty") ; required if you use qwerty
(xah-fly-keys 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'which-key)
(which-key-mode)
(setq which-key-popup-type 'minibuffer)
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

;; Prettify by Gopar!
(show-paren-mode t)
(set-face-background 'show-paren-match-face "#aaaaaa")
(set-face-attribute 'show-paren-match-face nil
		    :weight 'bold :underline nil :overline nil :slant 'normal)
(set-face-foreground 'show-paren-mismatch-face "red")
(set-face-attribute 'show-paren-mismatch-face nil
		    :weight 'bold :underline t :overline nil :slant 'normal)
;; make stuff pretty :D
(add-hook 'prog-mode-hook
	  (lambda ()
	    (push '(">=" . ?≥) prettify-symbols-alist)
	    (push '("<=" . ?≤) prettify-symbols-alist)
	    (push '("->" . ?→) prettify-symbols-alist)))
;; Global mode for it
(global-prettify-symbols-mode +1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (flatland)))
 '(custom-safe-themes
   (quote
    ("938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "3b24f986084001ae46aa29ca791d2bc7f005c5c939646d2b800143526ab4d323" "9122dfb203945f6e84b0de66d11a97de6c9edf28b3b5db772472e4beccc6b3c5" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "90d329edc17c6f4e43dbc67709067ccd6c0a3caa355f305de2041755986548f2" "91faf348ce7c8aa9ec8e2b3885394263da98ace3defb23f07e0ba0a76d427d46" default)))
 '(fci-rule-color "#202325")
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(linum-format " %7i ")
 '(package-selected-packages
   (quote
    (cmake-mode
     which-key
     xah-fly-keys
     flycheck-irony
     magit
     temp-buffer-browse
     switch-window
     sublime-themes
     smartparens
     python-mode
     python-info
     pylint
     py-smart-operator
     popwin
     neotree
     irony-eldoc
     iedit
     hydra
     flyspell-popup
     flyspell-lazy
     flymake-ruby
     flymake-python-pyflakes
     flycheck
     flatui-theme
     flatland-theme
     flatland-black-theme
     evil-nerd-commenter
     evil-leader
     ergoemacs-mode
     emacs-eclim
     elpy
     company-irony-c-headers
     company-irony
     company-inf-ruby
     autopair
     auto-complete-chunk
     auto-complete-c-headers
     atom-one-dark-theme
     atom-dark-theme
     ample-theme)))
 '(safe-local-variable-values
   (quote
    ((flycheck-clang-language-standard . C++11)
     (flycheck-clang-language-standard . c++11)
     (rpm-change-log-uses-utc . t))))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
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

;;; IRONY TRUE AUTO COMPLETE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; irony c++
(defun mf-c-c++-setup()
  (irony-mode +1)
  (setq irony-additional-clang-options '("-std=c++11"))
  (electric-operator-mode +1)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  (add-hook 'irony-mode-hook 'electric-operator-mode)
  (add-hook 'irony-mode-hook #'irony-eldoc)
  (add-hook 'irony-mode-hook 'flycheck-mode)
  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
  (add-hook 'irony-mode-hook
	    (lambda ()
	      (rtags-diagnostics)
	      (rtags-start-process-unless-running)))
  (define-key irony-mode-map (kbd "M-.")
    '(lambda () (interactive) (ring-insert find-tag-marker-ring (point-marker))
       (rtags-find-symbol-at-point)))
  (define-key irony-mode-map (kbd "M-,") 'xref-pop-marker-stack)
  )
(require 'xref)
(require 'cc-mode)
(require 'irony)
(require 'company)
(add-to-list 'company-backends 'company-irony)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-rtags)
(add-hook 'c++-mode-hook 'mf-c-c++-setup)
(add-hook 'c-mode-hook 'mf-c-c++-setup)
(add-hook 'objc-mode-hook 'mf-c-c++setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rtags
(require 'rtags)
(setq rtags-path "~/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/bin")

(setq rtags-autostart-diagnostics t)
(setq rtags-completions-enabled t)

;; == company-mode ==
(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;; Python (elpy)
(elpy-enable)

;; flyspell
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; Commenting Code
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "\\" 'evilnc-comment-operator
  )
;; Navigating Directories
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
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
;; Transparency
(defun djcb-opacity-modify (&optional dec)
  "modify the transparency of the emacs frame; if DEC is t,
    decrease the transparency, otherwise increase it in 10%-steps"
  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
	 (oldalpha (if alpha-or-nil alpha-or-nil 100))
	 (newalpha (if dec (- oldalpha 10) (+ oldalpha 10))))
    (when (and (>= newalpha frame-alpha-lower-limit) (<= newalpha 100))
      (modify-frame-parameters nil (list (cons 'alpha newalpha))))))

;; C-8 will increase opacity (== decrease transparency)
;; C-9 will decrease opacity (== increase transparency
;; C-0 will returns the state to normal
(global-set-key (kbd "C-8") '(lambda()(interactive)(djcb-opacity-modify)))
(global-set-key (kbd "C-9") '(lambda()(interactive)(djcb-opacity-modify t)))
(global-set-key (kbd "C-0") '(lambda()(interactive)
			       (modify-frame-parameters nil `((alpha . 100)))))

;; CMAKE files
;; Add cmake listfile names to the mode list.
(setq load-path (cons (expand-file-name "cmake-mode") load-path))
(require 'cmake-mode)
(setq auto-mode-alist
      (append
       '(("CMakeLists\\.txt\\'" . cmake-mode))
       '(("\\.cmake\\'" . cmake-mode))
       auto-mode-alist))

(autoload 'cmake-mode "cmake-mode.el" t)
;;; init.el ends here
