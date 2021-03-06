;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory

   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.

   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     javascript
     vimscript
     html
     rust
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ivy
     (better-defaults :variables
                      better-defaults-move-to-end-of-code-first t)
     auto-completion
     emacs-lisp
     git
     markdown
     (org :variables
          org-enable-hugo-support t)
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     spell-checking
     osx

     syntax-checking
     emoji
     (java :variables
           java-backend 'lsp)
     (chinese :variables
              chinese-enable-fcitx t)
     (c-c++ :variables
            c-c++-backend 'lsp-ccls)
     dap
     lsp
     csharp
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      use-package
                                      tree-mode
                                      ;; ---------lsp-java dependent package-------
                                      lsp-ui
                                      lsp-mode
                                      lsp-java
                                      dash-functional
                                      dap-mode
                                      company-lsp
                                      bui
                                      ;; ---------------------------------------
			                         	      ivy-posframe
                                      all-the-icons
                                      all-the-icons-dired
                                      all-the-icons-ivy
                                      hide-mode-line
                                      doom-themes
                                      helm-ag
                                      posframe
                                      ;;calfw
                                     ;; calfw-org
                                      quickrun
                                      ;; realgud
                                      ;; realgud-jdb
                                      eglot
                                      ;;
                                      exec-path-from-shell
                                      org2ctex
                                      ;; c#
                                      csharp-mode
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    vi-tilde-fringe
                                    org-projectile org-present orgit orglue org-timer org-repo-todo org-brain
                                    magit-gh-pulls magit-gitflow
                                    evil-mc evil-args evil-ediff evil-exchange evil-unimpaired evil-indent-plus evil-lisp-state 
                                    spacemacs-theme
                                    helm-flyspell helm-c-yasnippet ace-jump-helm-line helm-make magithub helm-themes helm-swoop helm-spacemacs-help helm-purpose
                                    company-quickhelp
                                    skewer-mode
                                    holy-mode
                                    livid-mode
                                    git-gutter git-gutter-fringe
                                    leuven-theme
                                    gh-md
                                    spray
                                    lorem-ipsum
                                    symon
                                    ac-ispell
                                    ace-jump-mode
                                    auto-dictionary
                                    clang-format
                                    google-translate
                                    disaster
                                    epic
                                    fancy-battery
                                    nyan-mode
                                    smeargle
                                    clean-aindent-mode
                                    rainbow-delimiters
                                    highlight-indentation
                                    eyebrowse
                                    ws-butler
                                    flx-ido
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)

   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         doom-nord
                         doom-nord-light
                         doom-vibrant
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-evil-line-move:mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
          ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

;;(setq configuration-layer--elpa-archives
;;      '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
;;        ("org-cn"   . "http://elpa.emacs-china.org/org/")
;;        ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))
  (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
  )


(defun dotspacemacs/user-config ()
  (let(
       (gc-cons-threshold most-positive-fixnum)
       (file-name-handler-alist nil))
      "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

;; -----------------------One day, may be I will come back to use pyim with rime--------------------------------------------

  ;; (setq load-path (cons (file-truename "~/.emacs.d/") load-path))

  ;; (require 'pyim)
  ;; (require 'posframe)
  ;; (require 'liberime)

  ;; (setq default-input-method "pyim")
  ;; (setq pyim-page-tooltip 'posframe)
  ;; (setq pyim-page-length 9)

  ;; ;; 加快pyim缓冲速度
  ;; (setq pyim-dcache-backend 'pyim-dregcache)

  ;; ;; 补全框模式改为垂直模式
  ;; (setq pyim-page-style 'vertical)

  ;; (liberime-start "/Library/Input Methods/Squirrel.app/Contents/SharedSupport" (file-truename "~/.emacs.d/pyim/rime/"))
  ;; (liberime-select-schema "luna_pinyin_simp")
  ;; (setq pyim-default-scheme 'rime-quanpin)
  ;; -------------------------------------------------------------------------------------------------------------------------

  ;;----------------------meghanada java configuration-------------------------
  ;; (require 'meghanada)
  ;; (add-hook 'java-mode-hook
  ;;           (lambda ()
  ;;             ;; meghanada-mode on
  ;;             (meghanada-mode t)

  ;;             ;; enable telemetry
  ;;             (meghanada-telemetry-enable t)
  ;;             (flycheck-mode +1)
  ;;             (setq c-basic-offset 2)
  ;;             ;; use code format
  ;;             (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)))
  ;; (cond
  ;;  ((eq system-type 'windows-nt)
  ;;   (setq meghanada-java-path (expand-file-name "bin/java.exe" (getenv "JAVA_HOME")))
  ;;   (setq meghanada-maven-path "mvn.cmd"))
  ;;  (t
  ;;   (setq meghanada-java-path "java")
  ;;   (setq meghanada-maven-path "mvn")))
      ;;----------------------meghanada java configuration closed------------------------

      ;; --------------------------omnisharp-mode configuration-----------------------
      (setq omnisharp-debug t)
;; ------------------------- lsp-java configuration----------------------------------
(require 'cc-mode)

(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (require 'use-package)))

(use-package projectile :ensure t)
(use-package yasnippet :ensure t)
(use-package lsp-mode :ensure t)
(use-package hydra :ensure t)
(use-package company-lsp :ensure t)
(use-package lsp-ui :ensure t)
(use-package lsp-java :ensure t :after lsp
  :config (add-hook 'java-mode-hook 'lsp))

(use-package dap-mode
  :ensure t :after lsp-mode
  :config

  (dap-ui-mode t))

(use-package dap-java :after (lsp-java))

(require 'lsp-java-boot)

;; to enable the lenses
(add-hook 'lsp-mode-hook #'lsp-lens-mode)
(add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)

(setq lsp-ui-sideline-update-mode 'point)
;; ------------------------- lsp-java configuration closed---------------------------------

;; ------------------------ ccls configuration-------------------------
(require 'ccls)
(use-package lsp-mode :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)

(use-package lsp-mode
  :hook (c-mode . lsp)
  :commands lsp)

(use-package ccls
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))
(setq ccls-executable "/usr/local/Cellar/ccls/0.20190314.1/bin/ccls")

;; set flycheck as default
(setq lsp-prefer-flymake nil)
(setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))

;; Diagnostics
(lsp--client-capabilities)

;; Initialization options
(setq ccls-initialization-options '(:index (:comments 2) :completion (:detailedLabel t)))

;; completion
(setq company-transformers nil company-lsp-async t company-lsp-cache-candidates nil)

;; semantic highlighting
(setq ccls-sem-highlight-method 'font-lock)
;; alternatively, (setq ccls-sem-highlight-method 'overlay)

;; For rainbow semantic highlighting
(ccls-use-default-rainbow-sem-highlight)
;; (define-key xref--xref-buffer-mode-map (kbd "M-.") 'xref-find-definitions)

;; (global-set-key (kbd "M-.") 'xref-find-definitions)


;;-------------------------ccls configuration closed---------------

;; garbage test
(defmacro k-time (&rest body)
  "Measure and return the time it takes evaluating BODY."
  `(let ((time (current-time)))
     ,@body
     (float-time (time-since time))))

(defvar k-gc-timer
   (run-with-idle-timer 15 t
                        (lambda ()
                          (message "Garbage Collector has run for %.06fsec"
                                   (k-time (garbage-collect))))))
;;-- cofig fctix
(with-eval-after-load 'fcitx
  ;; Make sure the following comes before `(fcitx-aggressive-setup)’
  (setq fcitx-active-evil-states '(insert emacs hybrid))
  ;; For Spacemacs use hybrid mode。 默认方式是 '(insert emacs) (fcitx-aggressive-setup) ; 如果要在 minibuffer 里输入中文，就改成
  (fcitx-default-setup)
  (fcitx-prefix-keys-add "M-m") ; M-m is common in Spacemacs
  ;;(setq fcitx-use-dbus t) ; uncomment if you’re using Linux
  ;; remove all keybindings from insert-state keymap,it is VERY VERY important
  (fcitx-prefix-keys-turn-off)
  (setcdr evil-insert-state-map nil)
 )

(with-eval-after-load 'evil
  ;;;把emacs模式下的按键绑定到Insert模式下
  (define-key evil-insert-state-map
    (read-kbd-macro evil-toggle-key) 'evil-emacs-state)
  ;; but [escape] should switch back to normal state
  (define-key evil-insert-state-map [escape] 'evil-normal-state)

  ;; escape between evil-insert-mode and evil-normal-mode
  (setq-default evil-escape-key-sequence "jk")

  ;;在evil-normal/visual模式下绑定C-e移动到行尾
  (define-key evil-normal-state-map (kbd "C-e") 'move-end-of-line)
  (define-key evil-visual-state-map (kbd "C-e") 'move-end-of-line)

  ;; ignore the line wrapping to jump the line
  (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
  (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
  (define-key evil-visual-state-map (kbd "j") 'evil-next-visual-line)
  (define-key evil-visual-state-map (kbd "k") 'evil-previous-visual-line)

)


;; --------config org layer-----------
(with-eval-after-load 'org
  (setq org-startup-indented t)

  ;; org-mode 代码块
  (require 'org-tempo)

  ;; set org-mode word-wrap
  (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

  ;; enable speed-command to optimize org GTD
  (setq evil-org-key-theme '(textobjects navigation additional insert todo))
  
  (setq org-image-actual-width 40)


  ;; add OS notification for org-pormodor
  (defun notify-osx (title message) 
    (call-process "terminal-notifier" 
                  nil 0 nil		 
                  "-group" "Emacs"		 
                  "-title" title
                  "-sender" "org.gnu.Emacs"		 
                  "-message" message
                  "-activate" "org.gnu.Emacs"))


    (require 'org-pomodoro)


  (add-hook 'org-pomodoro-finished-hook
            (lambda ()
              (notify-osx "Pomodoro completed!" "️Time for a break.")))
  (add-hook 'org-pomodoro-break-finished-hook
            (lambda ()
              (notify-osx "Pomodoro Short Break Finished" "Ready for Another?")))
  (add-hook 'org-pomodoro-long-break-finished-hook
            (lambda ()
              (notify-osx "Pomodoro Long Break Finished" "Ready for Another?")))
  (add-hook 'org-pomodoro-killed-hook
            (lambda ()
              (notify-osx "Pomodoro Killed" "One does not simply kill a pomodoro!")))

  ;; config org-agenda
  (setq org-agenda-files '("~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org"))

  ;; make notes capture faster
  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline "~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/gtd.org" "Day Plan")
           "* TODO [#B] %?\n  %i\n %U"
           :empty-lines 1)
          ("z" "折腾" entry  (file+headline "/Users/anthony/orgArchive/折腾.org" "折腾")
           "* TODO %?\n  %i\n %U"
           :empty-lines 1)
          ("b" "购物" entry  (file+headline "/Users/anthony/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/购物清单.org" "购物清单")
           "* TODO %?\n  %i\n %U"
           :empty-lines 1)
          ("i" "Inbox" entry  (file+headline "/Users/anthony/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/inbox.org" "Inbox")
           "* TODO %?\n  %i\n %U"
           :empty-lines 1)
          )
        )


  (setq org-agenda-custom-commands
        '(
          ("w" . "任务安排")
          ("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
          ("wb" "重要且不紧急的任务" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")
          ("wc" "不重要且紧急的任务" tags-todo "+PRIORITY=\"C\"")
          )
        )

)


(defun arthurMao/screenCapture (basename)
      "Take a screenshot into a time stamped unique-named file in the
      same directory as the org-buffer/markdown-buffer and insert a link to this file."
      (interactive "sScreenshot name: ")
      (if (equal basename "")
          (setq basename (format-time-string "%Y%m%d_%H%M%S")))
      (progn
        (setq final-image-full-path (concat basename ".png"))
        (setq final-image-directory-path (read-from-minibuffer "Save to(default ~/Blog/static):"))
        (if (equal final-image-directory-path "")
            (setq final-image-absolute-path (concat "~/Blog/static/" final-image-full-path))
          (setq final-image-absolute-path (concat final-image-directory-path final-image-full-path))
)
        (call-process-shell-command (format "screencapture -i %s" final-image-absolute-path) nil nil nil)
        (if (executable-find "convert")
            (progn
              (setq resize-command-str (format "convert %s -resize 100% %s" final-image-full-path final-image-full-path))
              (shell-command-to-string resize-command-str)))
        (zilongshanren//insert-org-or-md-img-link "~/Blog/static/" (concat basename ".png"))
        (insert "\n"))
      )
(spacemacs/set-leader-keys (kbd "o c") 'arthurMao/screenCapture)
(defun zilongshanren//insert-org-or-md-img-link (prefix imagename)
  (if (equal (file-name-extension (buffer-file-name)) "org")
      (insert (format "[[%s%s]]" prefix imagename))
    (insert (format "![%s](%s%s)" imagename prefix imagename))))



;; automatically close the minibuffer when it losed focus
(defun stop-using-minibuffer ()
  "kill the minibuffer"
  (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
    (abort-recursive-edit)))

(add-hook 'mouse-leave-buffer-hook 'stop-using-minibuffer)


;; abort company when you need to RET
(defun moon/return-cancel-completion ()
  "Cancel completion and return."
  (interactive)
  (company-abort)
  (newline nil t))

(global-set-key (kbd "S-<return>") #'moon/return-cancel-completion)




;; make minibuffer float in center
(require 'ivy-posframe)
;; display at `ivy-posframe-style'
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
;;(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-window-center)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-bottom-left)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-window-bottom-left)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-top-center)))
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-point)))
(ivy-posframe-mode 1)


;; apply all-the-icons in dired
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; dired
(put 'dired-find-alternate-file 'disabled nil)

;; 延迟加载
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; use C-x C-j to jump to file path
(require 'dired-x)

(require 'all-the-icons)

;; change all-the-icons to ivy
(use-package all-the-icons-ivy
  :ensure t
  :config
  (all-the-icons-ivy-setup))


(with-eval-after-load 'doom-themes
;; Global settings (defaults)
 (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled

  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
  (doom-themes-treemacs-config)

  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))





;; start using expand region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(require 'appt)
  (setq appt-time-msg-list nil)    ;; clear existing appt list
  (setq appt-display-interval '60)  ;; warn every 5 minutes from t - appt-message-warning-time
  (setq
   appt-message-warning-time '10   ;; send first warning 5 minutes before appointment
   appt-display-mode-line nil     ;; don't show in the modeline
   appt-display-format 'window)   ;; pass warnings to the designated window function
  (appt-activate 1)                ;; activate appointment notification
  (display-time)                   ;; activate time display

  (org-agenda-to-appt)             ;; generate the appt list from org agenda files on emacs launch
  (run-at-time "24:01" 3600 'org-agenda-to-appt)           ;; update appt list hourly
  (add-hook 'org-finalize-agenda-hook 'org-agenda-to-appt) ;; update appt list on agenda view

  (defun my-appt-display (min-to-app new-time msg)
    (notify-osx
     (format "%s in %s minutes" msg min-to-app)    ;; passed to -title in terminal-notifier call
     (format "%s" msg)
     ))                                ;; passed to -message in terminal-notifier call
  (setq appt-disp-window-function (function my-appt-display))

  ;;(setq org-agenda-skip-scheduled-if-deadline-is-shown 'repeated-after-deadline)

  ;; (require 'realgud)
  ;; (require 'realgud-jdb)

;; change custom group inital state to normal
  (evil-set-initial-state 'Custom-mode 'normal)

  (global-linum-mode t)
  ;; (setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin"))
  ;;
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
;;   ;;-----------------------pdf export config ----------------------------------
;;   ;; for export latex
;; (add-to-list 'org-latex-classes
;; 	     '("ctexart"
;; "\\documentclass[UTF8,a4paper]{ctexart}"
;; ;;"\\documentclass[fontset=none,UTF8,a4paper,zihao=-4]{ctexart}"
;; 	       ("\\section{%s}" . "\\section*{%s}")
;; 	       ("\\subsection{%s}" . "\\subsection*{%s}")
;; 	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;; 	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
;; 	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
;; 	       )
;; 	     )
;; (add-to-list 'org-latex-classes
;; 	       '("ctexrep"
;; "\\documentclass[UTF8,a4paper]{ctexrep}"
;; 		("\\part{%s}" . "\\part*{%s}")
;; 		("\\chapter{%s}" . "\\chapter*{%s}")
;; 		("\\section{%s}" . "\\section*{%s}")
;; 		("\\subsection{%s}" . "\\subsection*{%s}")
;; 	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;; 	       )
;; 	       )
;; (add-to-list 'org-latex-classes
;; 	       '("ctexbook"
;; "\\documentclass[UTF8,a4paper]{ctexbook}"
;; ;;("\\part{%s}" . "\\part*{%s}")
;; 		("\\chapter{%s}" . "\\chapter*{%s}")
;; 		("\\section{%s}" . "\\section*{%s}")
;; 		("\\subsection{%s}" . "\\subsection*{%s}")
;; 	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;; 	       )
;; 	       )
;; (add-to-list 'org-latex-classes
;; 	       '("beamer"
;; "\\documentclass{beamer}
;;                \\usepackage[fontset=none,UTF8,a4paper,zihao=-4]{ctex}"
;; 	       org-beamer-sectioning)
;; 	       )
;; (setq org-latex-default-class "ctexart")
;; (setq org-latex-pdf-process
;;       '("xelatex -interaction nonstopmode -output-directory %o %f"
;; "xelatex -interaction nonstopmode -output-directory %o %f"
;; "xelatex -interaction nonstopmode -output-directory %o %f"))

  ;;-----------------------pdf export config closed----------------------------------
  ;; (require 'org2ctex)
  ;; (org2ctex-toggle t)
  ))




;; =====================ATTENTION: CLOSING OF USER-CONFIG==============================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (vi-tilde-fringe ws-butler winum which-key wgrep volatile-highlights uuidgen use-package unfill toc-org spaceline smex smeargle restart-emacs rainbow-delimiters pyim popwin persp-mode pcre2el paradox pangu-spacing orgit org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file neotree mwim move-text mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum linum-relative link-hint ivy-hydra indent-guide hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy flyspell-correct-ivy flyspell-correct-helm flycheck-pos-tip flx-ido find-by-pinyin-dired fill-column-indicator fcitx fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word counsel-projectile company-statistics column-enforce-mode clean-aindent-mode auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent adaptive-wrap ace-window ace-pinyin ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
(load custom-file 'no-error 'no-message)

