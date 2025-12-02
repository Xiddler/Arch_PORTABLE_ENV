;; Oct 2025

;; ***********************************************************************************************
;; packages


;; package repositories
(setq package-archives
	  '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
		("MELPA"        . "https://melpa.org/packages/")
		("ORG"          . "https://orgmode.org/elpa/")
		("MELPA Stable" . "https://stable.melpa.org/packages/")
		("nongnu"       . "https://elpa.nongnu.org/nongnu/"))
	  package-archive-priorities
	  '(("GNU ELPA"     . 20)
		("MELPA"        . 15)
		("ORG"          . 10)
		("MELPA Stable" . 5)
		("nongnu"       . 0)))

(package-initialize)

;; package
(require 'package)

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; use-package is built in
;; (when (< emacs-major-version 29)
;;  (unless (package-installed-p 'use-package)
;;    (unless package-archive-contents
;;      (package-refresh-contents))
;;    (package-install 'use-package)))

;; Note on installing packages
;; After setting up your package sources, you can add (require 'package-name) to your init.el and
;; Emacs will automatically search, download, and install that package from the source. 
;; Remember to evaluate your init.el file to load changes by using the command eval-buffer or restarting emacs

;; Preferred packages
;; evil -- vim keybinding
;; ido -- built-in completion ; M-x ido-mode ; typical usage is when opening a file with C-x C-f when a list of files is provided; alternative is Helm and Vertico
;; dired
;; auto-completion packages such as the built-in dabbrev-mode, or corfu and company-mode.

;; end packages
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; evil-mode [ vim mode for emacs ]

(use-package evil
  :ensure t
  :init
  (evil-mode))

;; after installing the package evil-escape-mode from Melpa
(evil-escape-mode 1)

;; end evil-mode
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; which-key [ the pop-up mini-buffer help ]
;; mini
;; buffer assistance; usage: M-x which-key-show-minor-mode-keymap <Enter> <Enter>

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; Allow C-h to trigger which-key before it is done automatically
(setq which-key-show-early-on-C-h t)
;; make sure which-key doesn't show normally but refreshes quickly after it is
;; triggered.
(setq which-key-idle-delay 10000)
(setq which-key-idle-secondary-delay 0.05)
(which-key-mode)

(setq which-key-popup-type 'minibuffer)

;; end which-key
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; styling & themes

;; disable splash screen and startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; (load-theme 'leuven-dark t)

(use-package doom-themes
  :ensure t
)
;; (require' doom-themes)    ;; Make sure doom-themes are installed
;; (load-theme 'doom-nord t) ;; Load the doom-nord theme
(load-theme 'tsdh-dark t) ;; Load the tsdh-dark theme

;; background colour ; to check the ~/.emacs.d/init.el file is being read
;; (add-to-list 'default-frame-alist '(foreground-color . "#E0DFDB")) ;; whiteish
;; (add-to-list 'default-frame-alist '(background-color . "#102372")) ;; blue

;; graphical bars
;; 1 enables; -1 disable
(menu-bar-mode 1)
(scroll-bar-mode 1)
(tool-bar-mode -1)
;; end graphical bars

;; end styling & themes
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; keybindings

;; (global-set-key KEY COMMAND)
;; (local-set-key  KEY COMMAND)
;; (define-key     KEYMAP KEY COMMAND)
;; ;; make Ctrl+t call whitespace-mode
;; (keymap-global-set "C-t" #'whitespace-mode)

;; (global-set-key  COMMAND)
;; (define-key haskell-mode-map (kbd "C-c h")   'haskell-hoogle)
;; FAIL (define-key (kbd "C-h w")   'which-key-show-minor-mode-keymap)
;; (keymap-global-set "C-h h" #'which-key-show-minor-mode-keymap)
;; (keymap-global-set "C-h t" #'which-key-show-top-level)

;; SPACEBAR runs evil-ex
(evil-global-set-key 'normal (kbd "SPC") 'evil-ex)

;; SPC s SPC runs evil-save
;;(evil-global-set-key 'normal (kbd "SPC") 'normal (kbd "s") 'normal (kbd SPC") 'evil-save))
;;(evil-global-set-key 'normal (kbd "SPC.s.SPC") 'evil-save)



;; Shortcut Fn F8 F8 to open init.el (REM: Press the Fn button!)
(global-set-key
 (kbd "<f8> <f8>")
 (lambda ()
   (interactive)
   (find-file "~/.emacs.d/init.el")))

;; comment out a line 
(keymap-global-set "C-c c" #'kmacro-call-macro)
;; only runs if a macro is saved 

;; end keybindings
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; org mode

;; set org directory so that org agenda reads the TODOs DONEs etc.
(setq org-directory "~/Documents/org")

; change the symbol on collapsed headings
(setq org-ellipsis " ▼ ")

(setq org-todo-keywords
      '((sequence
	 "TODO(t)" "STARTED(s)" "ONGOING(o)" "WAIT(w)" "READ(r)" "PROG(p)" ; Needs further action
	"|"
	"DONE(d)")))                            ; Needs no action currently


(use-package org-superstar
  :config
  (setq org-superstar-leading-bullet " ")
  (setq org-superstar-headline-bullets-list '("◉" "○" "⚬" "◈" "◇"))
  (setq org-superstar-special-todo-items t) ;; Makes TODO header bullets into boxes
  (setq org-superstar-todo-bullet-alist '(("TODO"  . 9744)
                                          ("STARTED"  . 9744)
                                          ("ONGOING"  . 9744)
                                          ("WAIT"  . 9744)
                                          ("READ"  . 9744)
                                          ("PROG"  . 9744)
										  ("DONE"  . 9745)))
  :hook (org-mode . org-superstar-mode))

;; org agenda

(setq org-agenda-files (list "/home/donagh/Documents/org/todos.org"
			;;                           "/home/donagh/Dropbox/org-mode/org/worksearch.org"
			;;			    "/home/donagh/Dropbox/org-mode/org/org.org"
;;                                    "/home/donagh/DONAGHS/personal/Financial_Reality/money.org"))
))

;; end orgmode
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; treemacs [ sidebarenhancements / file explorer in window to the left ]

;; keybinding C-c t
(require 'treemacs)
;; toggle treemacs --- sidebuffer showing files
(keymap-global-set "C-c t" 'treemacs)

;; end treemacs
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; fonts incl. family & siz

;; rem: Arch%> fc-list in the CLI

(when (member "Roboto Mono" (font-family-list))
  ;;(set-face-attribute 'default nil :font "Roboto Mono" :height 120)
  (set-face-attribute 'default nil :font "Roboto Mono" :height 135)
  (set-face-attribute 'fixed-pitch nil :family "Roboto Mono"))


(when (member "Noto Sans Regular" (font-family-list))
  ;; (set-face-attribute 'variable-pitch nil :family "Noto Sans Regular" :height 1.18))
  (set-face-attribute 'variable-pitch nil :family "Noto Sans Regular" :height 2.18))


;; ***********************************************************************************************
;; C-g [ allows escaping from partially complete commands ]
;; minibuffer-keyboard-quit

;; Having observed beginners struggle with C-g not closing the open minibuffer, I know that the following is a quality-of-life refinement:
;; https://protesilaos.com/codelog/2024-11-28-basic-emacs-configuration/

;; (defun prot/keyboard-quit-dwim ()
;;  "Do-What-I-Mean behaviour for a general `keyboard-quit'.

;;The generic `keyboard-quit' does not do the expected thing when
;;the minibuffer is open.  Whereas we want it to close the
;;minibuffer, even without explicitly focusing it.
;;
;;The DWIM behaviour of this command is as follows:
;;
;;- When the region is active, disable it.
;;- When a minibuffer is open, but not focused, close the minibuffer.
;;- When the Completions buffer is selected, close it.
;;- In every other case use the regular `keyboard-quit'."
;;  (interactive)
;;  (cond
;;   ((region-active-p)
;;    (keyboard-quit))
;;   ((derived-mode-p 'completion-list-mode)
;;    (delete-completion-window))
;;   ((> (minibuffer-depth) 0)
;;    (abort-recursive-edit))
;;   (t
;;    (keyboard-quit))))

;;(define-key global-map (kbd "C-g") #'prot/keyboard-quit-dwim)

;; end C-g
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; vertico marginalia orderless savehist

;; The minibuffer is a central part of the Emacs experience. It is where the user interacts with Emacs to respond to prompts, switch to another buffer, open a new file, run a command by its full name, and so on. The default minibuffer is minimal, which might be good for experienced users, but does not help with discoverability.

;; Instead of that, we use the vertico package to produce a vertical layout. This makes it easier to see what the available options are.

(use-package vertico
  :ensure t
  :hook (after-init . vertico-mode))

;;The marginalia package is a nice complement to the vertical layout, as it uses the free space to show helpful information about the options shown there. For example, when the user types M-x to see a list of command names, Marginalia will add a brief description of each command. Depending on the specifics of the minibuffer interaction (opening a file, selecting a buffer, …), there will be the relevant information on display.

(use-package marginalia
  :ensure t
  :hook (after-init . marginalia-mode))

;;The orderless package offers a life-saver for all those cases where we do not remember the exact order of words. For example, to toggle the display of line numbers in the current buffer, we use the command M-x display-line-numbers-mode. With orderless set up, we may type something like li num dis at the M-x prompt and still get the desired result. This is because Orderless matches the space-separated characters we provide in any order. Emacs has other pattern matching styles built-in, but orderless is a good place to start. We thus make sure the other relevant variables are set to a nil value, so that we get Orderless everywhere.

(use-package orderless
  :ensure t
  :config
  (setq completion-styles '(orderless basic))
  (setq completion-category-defaults nil)
  (setq completion-category-overrides nil))

;;The built-in savehist package keeps a record of user inputs and stores them across sessions.
;; Thus, the user will always see their latest choices closer to the top (such as with M-x).


;; (use-package savehist
  ;; :ensure nil ; it is built-in
  ;; :hook (after-init . savehist-mode))

;; (require 'savehist)
;; (savehist-mode 1)
;; (savehist-autosave)


;; end vertico marginalia orderless savehist
;; ----------------------------------------------------------------------------------------------

;; ***********************************************************************************************
;; corfu 

;; (use-package corfu
  ;; :ensure t
  ;; :hook (after-init . corfu-mode))

;; Enable auto completion and configure quitting
;; (setq corfu-auto t
      ;; corfu-quit-no-match 'separator) ;; or t


;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; vertico replaces ivy
;; ivy [ C-j down C-k up ]

;; 2025-10-17 I disable ivy because it was interfering with savehist minibuffer
;; (use-package ivy
;;   :ensure nil ; it is built-in
;;   :hook (after-init . ivy-mode))

;; end ivy
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; dired

;; keybinding C-x d
;; The default presentation of Dired contains lots of details (The complete configuration). We use dired-hide-details-mode to hide those. They can be toggled on/off at any time with M-x dired-hide-details-mode, which is bound to the ( key in Dired buffers.

(use-package dired
  :ensure nil
  :commands (dired)
  :hook
  ((dired-mode . dired-hide-details-mode)
   (dired-mode . hl-line-mode))
  :config
  (setq dired-recursive-copies 'always)
  (setq dired-recursive-deletes 'always)
  (setq delete-by-moving-to-trash t)
  (setq dired-dwim-target t))

;; end dired
;; ----------------------------------------------------------------------------------------------


;;***********************************************************************************************
;; line numbers
(display-line-numbers-mode 1)
(setq display-line-numbers 'relative)
;; end line numbers
;; ----------------------------------------------------------------------------------------------


;; ***********************************************************************************************
;; initial frame size


;; (add-to-list 'default-frame-alist '(height . 48))
;; (add-to-list 'default-frame-alist '(width . 160)) 

;; (setq default-frame-alist
      ;; '((top . 200) (left . 400)
        ;; (width . 80) (height . 40)
        ;; (cursor-color . "white")
        ;; (cursor-type . box)
        ;; (foreground-color . "yellow")
        ;; (background-color . "black")
	;;  (font . "-*-Courier-normal-r-*-*-13-*-*-*-c-*-iso8859-1")
	;; )
      ;; )

;; (setq initial-frame-alist '((top . 10) (left . 30)))

;; (defun set-frame-size-according-to-resolution ()
  ;; (interactive)
  ;; (if window-system
  ;; (progn
    ;; use 120 char wide window for largeish displays
    ;; and smaller 80 column windows for smaller displays
    ;; pick whatever numbers make sense for you
    ;; (if (> (x-display-pixel-width) 1280)
           ;; (add-to-list 'default-frame-alist (cons 'width 120))
           ;; (add-to-list 'default-frame-alist (cons 'width 80)))
    ;; for the height, subtract a couple hundred pixels
    ;; from the screen height (for panels, menubars and
    ;; whatnot), then divide by the height of a char to
    ;; get the height we want
    ;; (add-to-list 'default-frame-alist 
         ;; (cons 'height (/ (- (x-display-pixel-height) 200)
                             ;; (frame-char-height)))))))

;; (set-frame-size-according-to-resolution)

;; (modify-all-frames-parameters
 ;; '((tool-bar-lines . 0)
   ;; (width . 80)
   ;; (height . 44)))

;; this worked when I launch with -%Arch> emacs -q --load ~/.emacs.d/init.el
;; or on M-x eval-buffer
;; this works
 (when window-system
   (set-frame-position (selected-frame) 30 10)
   (set-frame-size (selected-frame) 180 40))

;; (add-to-list 'default-frame-alist '(height . 48)) ;; Vertical frame size
;; (add-to-list 'default-frame-alist '(width . 122)) ;; Horizontal frame size

;; end initial frame size
;; ----------------------------------------------------------------------------------------------


;; end init.el
;; ----------------------------------------------------------------------------------------------
;; ----------------------------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3613617b9953c22fe46ef2b593a2e5bc79ef3cc88770602e7e569bbd71de113b"
     default))
 '(package-selected-packages
   '(corfu dired-subtree doom-themes evil-escape ivy marginalia orderless
	   org-bullets org-superstar treemacs vertico which-key)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
