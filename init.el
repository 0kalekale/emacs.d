(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
        '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Initialize use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Evil mode
(use-package evil
  :ensure t
  :defer nil
  :init
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode 1))

;; Disable GUI elements
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'default-frame-alist
             '(font . "Iosevka Term-14"))

(global-display-line-numbers-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2f2f2e" "#ffb4ac" "#8ac6f2" "#e5c06d" "#a4b5e6" "#e5786d" "#7ec98f" "#74736f"])
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#7ec98f")
 '(cua-normal-cursor-color "#8d8b86")
 '(cua-overwrite-cursor-color "#e5c06d")
 '(cua-read-only-cursor-color "#8ac6f2")
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("22f080367d0b7da6012d01a8cd672289b1debfb55a76ecdb08491181dcb29626" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "efcecf09905ff85a7c80025551c657299a4d18c5fcfedd3b2f2b6287e4edd659" "f5b6be56c9de9fd8bdd42e0c05fecb002dedb8f48a5f00e769370e4517dde0e8" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" default))
 '(fci-rule-color "#2f2f2e")
 '(highlight-changes-colors '("#e5786d" "#834c98"))
 '(highlight-symbol-colors
   '("#55204c0039fc" "#3f0a4e4240dc" "#5a2849c746fd" "#3fd2334a42f4" "#426a4d5455d9" "#537247613a13" "#46c549b0535c"))
 '(highlight-symbol-foreground-color "#999891")
 '(highlight-tail-colors
   '(("#2f2f2e" . 0)
     ("#3d464c" . 20)
     ("#3b473c" . 30)
     ("#41434a" . 50)
     ("#4c4536" . 60)
     ("#4b4136" . 70)
     ("#4d3936" . 85)
     ("#2f2f2e" . 100)))
 '(hl-bg-colors
   '("#4c4536" "#4b4136" "#504341" "#4d3936" "#3b313d" "#41434a" "#3b473c" "#3d464c"))
 '(hl-fg-colors
   '("#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29"))
 '(hl-paren-colors '("#7ec98f" "#e5c06d" "#a4b5e6" "#834c98" "#8ac6f2"))
 '(lsp-ui-doc-border "#999891")
 '(nrepl-message-colors
   '("#ffb4ac" "#ddaa6f" "#e5c06d" "#3d464c" "#e3eaea" "#41434a" "#7ec98f" "#e5786d" "#834c98"))
 '(package-selected-packages
   '(bison-mode dracula-theme nim-mode solarized-theme vterm volume bongo dashboard common-lisp-mode rust-mode julia-mode use-package slime evil))
 '(pos-tip-background-color "#2f2f2e")
 '(pos-tip-foreground-color "#999891")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#8ac6f2" "#2f2f2e" 0.2))
 '(term-default-bg-color "#2a2a29")
 '(term-default-fg-color "#8d8b86")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#ffb4ac")
     (40 . "#f3a0bb068dbb")
     (60 . "#ecf0bdf57dd8")
     (80 . "#e5c06d")
     (100 . "#d1fcc2679b35")
     (120 . "#c551c35ab143")
     (140 . "#b610c464c727")
     (160 . "#a327c588dd05")
     (180 . "#8ac6f2")
     (200 . "#89fec7dad1d0")
     (220 . "#8863c85ec150")
     (240 . "#85eec8dcb0cf")
     (260 . "#82a3c956a041")
     (280 . "#7ec98f")
     (300 . "#9131c244b2d6")
     (320 . "#98acbe43c439")
     (340 . "#9f20ba15d58f")
     (360 . "#a4b5e6")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#2a2a29" "#2f2f2e" "#504341" "#ffb4ac" "#3d464c" "#8ac6f2" "#4c4536" "#e5c06d" "#41434a" "#a4b5e6" "#4d3936" "#e5786d" "#3b473c" "#7ec98f" "#8d8b86" "#74736f"))
 '(xterm-color-names
   ["#2f2f2e" "#ffb4ac" "#8ac6f2" "#e5c06d" "#a4b5e6" "#e5786d" "#7ec98f" "#e8e5db"])
 '(xterm-color-names-bright
   ["#2a2a29" "#ddaa6f" "#6a6a65" "#74736f" "#8d8b86" "#834c98" "#999891" "#f6f3e8"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inferior-lisp-program "sbcl")
(setq org-startup-with-inline-images t)

(use-package dashboard
  :ensure t
  :defer nil
  :preface
  (defun create-scratch-buffer ()
    "Create a scratch buffer"
    (interactive)
    (switch-to-buffer (get-buffer-create "*scratch*"))
    (lisp-interaction-mode))
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents . 5)))
  (setq dashboard-banner-logo-title "K A L E M A C S - my emac")
  (setq dashboard-startup-banner "~/a.png")
  (setq dashboard-center-content t)
  (setq dashboard-show-shortcuts nil)
  (setq dashboard-set-init-info t)
  (setq dashboard-init-info (format "%d packages loaded in %s"
                                    (length package-activated-list) (emacs-init-time)))
  (setq dashboard-set-footer nil)
  (setq dashboard-set-navigator t)
  (setq dashboard-navigator-buttons
        `(;; line1
          ((,nil
            "kalekale on github"
            "Open kalekale' github page on your browser"
            (lambda (&rest _) (browse-url "https://github.com/0kalekale"))
            'default)
           (nil
            "web sight"
            "my web sight"
            (lambda (&rest _) (eww "https://kalekale.ga"))
            'default)
           (nil
            "Bongo Music"
            "musicplayer"
            (lambda (&rest _) (bongo))
            'default)
           )
          ;; line 2
          ((,nil
            "Open init.el"
            "open configuration"
            (lambda (&rest _) (find-file "~/.emacs.d/init.el"))
            'default)
           (nil
            "Open home.org"
            "Dairy"
            (lambda (&rest _) (find-file "~/home.org"))
            'default)))))

(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))
