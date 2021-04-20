;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Enzo E. Galletta"
      user-mail-address "egalletta12@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.


(setq doom-font (font-spec :family "Hack Nerd Font" :size 14)
      doom-big-font (font-spec :family "Hack Nerd Font" :size 24)
      doom-variable-pitch-font (font-spec :family "Hack Nerd Font" :size 14))



;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)
(setq set-fill-column 80)
(setq refill-mode t)

(setq org-latex-toc-command "\\tableofcontents \\clearpage")


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
(map! :leader
      :desc "Open Terminal"
      "a t" #'vterm)
(use-package! lsp-ui)
(use-package! lsp-ui-doc)
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-delay 1)
(setq lsp-ui-doc-show-with-cursor t)
(setq lsp-ui-doc-show-with-mouse t)
(setq lsp-ui-doc-use-webkit t)
(add-hook 'python-mode-hook (lambda ()
                                  (require 'sphinx-doc)
                                  (sphinx-doc-mode t)))
(map! :leader
      :desc "Generate Docstring"
      "a s" #'sphinx-doc)

(setq smooth-scrolling-mode t)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
;;
;; (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
;;
;; (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
;;
;; (setq scroll-step 1) ;; keyboard scroll one line at a time
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
