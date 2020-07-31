;; overwrite the default hidden file filter, so it uses .gitignore
        (defun neo-util--hidden-path-filter (node)
            "it reads each nodule on the list, and determines if its ignored by git."
            (if neo-buffer--show-hidden-file-p
                ;; all files should be shown
                node
                ;; hiding is enabled, use git check-ignore to determeine which to show
                (if
                    ;; if the output is empty (file should be shown) return the node
                    (string=
                        (string-trim
                            (shell-command-to-string
                                (format
                                    "git -C %s check-ignore %s"
                                    (file-name-directory node)
                                    node
                                )
                            )
                        )
                        ""
                    )
                    node
                    ;; git outputed something, file shold be hidden
                    nil
                )
            )
        )

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Caio Borges Aguida Geraldes"
      user-mail-address "caioaguida@gmail.com")

(if (daemonp)
    (add-hook 'after-make-frame-functions
        (lambda (frame)
            (with-selected-frame frame
            (require 'unicode-fonts)
            (unicode-fonts-setup)))))
  (require 'unicode-fonts)
  (unicode-fonts-setup)

  (setq doom-font (font-spec :family "NotoSansMono Nerd Font" :size 14))

(if (daemonp)
    (add-hook 'after-make-frame-functions
        (lambda (frame)
            (with-selected-frame frame
            (set-frame-parameter (selected-frame) 'alpha '(90 . 90))
            (add-to-list 'default-frame-alist '(alpha . (90 . 90)))))))

(set-face-attribute 'flycheck-error nil :underline '(:color "Red" :style wave))
(use-package ewal
  :init (setq ewal-use-built-in-always-p nil
              ewal-use-built-in-on-failure-p t
              ewal-built-in-palette "gruvbox"
              ewal-json-file "/home/silenux/.cache/wal"))
(use-package ewal-doom-themes
  :init (progn
          (setq doom-theme-underline-parens t
                my:rice:font (font-spec
                              :family "NotoSansMono Nerd Font"
                              :weight 'semi-bold
                              :size 11.0))
          (show-paren-mode +1)
          (global-hl-line-mode)
          (set-frame-font my:rice:font nil t)
          (add-to-list  'default-frame-alist
                        `(font . ,(font-xlfd-name my:rice:font))))
    :config (progn
            (load-theme   'ewal-doom-vibrant t)
            (enable-theme 'ewal-doom-vibrant)))

 (defun toggle-transparency ()
   (interactive)
   (let ((alpha (frame-parameter nil 'alpha)))
     (set-frame-parameter
      nil 'alpha
      (if (eql (cond ((numberp alpha) alpha)
                     ((numberp (cdr alpha)) (cdr alpha))
                     ;; Also handle undocumented (<active> <inactive>) form.
                     ((numberp (cadr alpha)) (cadr alpha)))
               100)
          '(95 . 50) '(100 . 100)))))
 (global-set-key (kbd "C-c t") 'toggle-transparency)

;; (custom-set-variables)
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(ansi-color-names-vector
   ;; ["#21242b" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 ;; '(fci-rule-color "#5B6268")
 ;; '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 ;; '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 ;; '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 ;; '(objed-cursor-color "#ff6c6b")

 ;; '(package-selected-packages (quote (doom-themes)))
 ;; '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 ;; '(rustic-ansi-faces
 ;;   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 ;; '(vc-annotate-background "#282c34")
 ;; '(vc-annotate-color-map
 ;;   (list
 ;;    (cons 20 "#98be65")
 ;;    (cons 40 "#b4be6c")
 ;;    (cons 60 "#d0be73")
 ;;    (cons 80 "#ECBE7B")
 ;;    (cons 100 "#e6ab6a")
 ;;    (cons 120 "#e09859")
 ;;    (cons 140 "#da8548")
 ;;    (cons 160 "#d38079")
 ;;    (cons 180 "#cc7cab")
 ;;    (cons 200 "#c678dd")
 ;;    (cons 220 "#d974b7")
 ;;    (cons 240 "#ec7091")
 ;;    (cons 260 "#ff6c6b")
 ;;    (cons 280 "#cf6162")
 ;;    (cons 300 "#9f585a")
 ;;    (cons 320 "#6f4e52")
 ;;    (cons 340 "#5B6268")
 ;;    (cons 360 "#5B6268")))
 ;; '(vc-annotate-very-old-color nil))
;; (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; )

;; Latex configuration
;;
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(setq +latex-viewers '(zathura))
(setq-default TeX-engine 'xetex)
(setq-default TeX-PDF-mode t)

(global-set-key (kbd "C-c r") 'run-ess-r)
(use-package ess-r-mode
  :bind
  (:map ess-r-mode-map
        ("_" . ess-insert-assign))
  (:map inferior-ess-r-mode-map
        ("_" . ess-insert-assign)))

(global-set-key (kbd "C-x f") 'elfeed)

(setq elfeed-feeds
      '(("https://www.theguardian.com/uk/culture/rss" news culture)
        ("https://www.theguardian.com/world/americas/rss" news)
        ("https://feedly.com/i/subscription/feed/https://piaui.folha.uol.com.br/feed" news)
        ("https://feedly.com/i/subscription/feed/https://www.nexojornal.com.br/feed" news)
        ("https://linguistlist.org/issues/rss/mostrecent.xml" linguistics)
        ("https://www.languagesciences.cam.ac.uk/taxonomy/term/84/feed" linguistics)
        ("https://www.degruyter.com/journalissuetocrss/journals/indo/indo-overview.xml" linguistics philology academic-stuff)
        ("https://www.mitpressjournals.org/action/showFeed?jc=coli&type=etoc&feed=rss" linguistics)
        ("https://www.oxfordscholarship.com/newsrss" academic-stuff)
        ("https://blog.philsoc.org.uk/feed" philology linguistics academic-stuff)
        ("https://indology.info/rss1.xml" linguistics indology philology academic-stuff)
        ("https://consultingphilologist.wordpress.com/" philology academic-stuff linguistics)
        ("https://crewsproject.wordpress.com/" philology academic-stuff linguistics)
        ("https://escamandro.wordpress.com/feed" literature others)
        ("https://toujourmicelio.wordpress.com/feed" philosophy others)))

;; Custom Input Methods
(let ((default-directory  "~/.doom.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'pie-macs)

;; mu4e config
(require 'mu4e)

;; use mu4e for e-mail in emacs
(setq mail-user-agent 'mu4e-user-agent)

(setq mu4e-drafts-folder "/[Gmail].Rascunhos")
(setq mu4e-sent-folder "/[Gmail].E-mails enviados")
(setq mu4e-trash-folder "/[Gmail].Lixeira")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)

;; (See the documentation for `mu4e-sent-messages-behavior' if you have
;; additional non-Gmail addresses and want assign them different
;; behavior.)

;; setup some handy shortcuts
;; you can quickly switch to your Inbox -- press ``ji''
;; then, when you want archive some messages, move them to
;; the 'All Mail' folder by pressing ``ma''.

(setq mu4e-maildir-shortcuts
    '( (:maildir "/INBOX" :key ?i)
       (:maildir "/[Gmail].E-mails enviados" :key ?s)
       (:maildir "/[Gmail].Lixeira" :key ?t)
       (:maildir "/[Gmail].Todos os e-mails" :key ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

;; sending mail -- replace USERNAME with your gmail username
;; also, make sure the gnutls command line utils are installed
;; package 'gnutls-bin' in Debian/Ubuntu

(require 'smtpmail)
(setq message-send-mail-function 'smtpmail-send-it
   starttls-use-gnutls t
   smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
   smtpmail-auth-credentials
     '(("smtp.gmail.com" 587 "caioaguida@gmail.com" nil))
   smtpmail-default-smtp-server "smtp.gmail.com"
   smtpmail-smtp-server "smtp.gmail.com"
   smtpmail-smtp-service 587)

;; alternatively, for emacs-24 you can use:
;;(setq message-send-mail-function 'smtpmail-send-it
;;     smtpmail-stream-type 'starttls
;;     smtpmail-default-smtp-server "smtp.gmail.com"
;;     smtpmail-smtp-server "smtp.gmail.com"
;;     smtpmail-smtp-service 587)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)
