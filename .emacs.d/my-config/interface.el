(provide 'interface)

;(setq current-language-environment "UTF-8")

(run-with-idle-timer 0.5 nil 'w32-send-sys-command 61488)
(global-set-key (kbd "RET") 'newline-and-indent)
(set-buffer-file-coding-system 'utf-8)

(transient-mark-mode 1)				; highlight text selection
(delete-selection-mode 1)			; make typing overwrite text selection
(show-paren-mode 1)				; turn on highlight matching brackets when cursor is on one
(electric-pair-mode 1)				; turn on automatic bracket insertion by pairs. New in emacs 24
(global-subword-mode 1)				; move through camelCaseWords
(setq make-backup-files nil)		    	; stop creating those backup ~ files
(setq auto-save-default nil)		    	; stop creating those #auto-save# files
(setq-default indent-tabs-mode nil)	    	; convert tab to spaces
(setq tab-width 4)				; set default tab width to 4


;----------------------;
;;; Windows & Frames ;;;
;----------------------;

(setq inhibit-startup-screen t)			; don't show the startup screen
(tool-bar-mode 0)				; don't show the tool bar
(scroll-bar-mode 0)				; don't show the scrool bar
(global-linum-mode 1)				; display line numbers in margin
(column-number-mode 1)				; display column number


;--------------------------;
;;; Color Theme and Font ;;;
;--------------------------;

(require 'color-theme)
(color-theme-initialize)
(load "~/.emacs.d/plugins/themes/color-theme-molokai.el")
(color-theme-molokai)

;; 设置英文字体
(set-face-attribute
 'default nil :font "Monaco 12")
;; 设置中文字体
(dolist (character '(han kana symbol cjk-misc bopomofo))
 (set-fontset-font (frame-parameter nil 'font)
  character
  (font-spec :family "Microsoft YaHei" :size 18)))
;(set-default-font "-outline-Monaco-normal-normal-normal-mono-16-*-*-*-c-*-iso8859-1")

;----------------;
;;;; Yasnippet ;;;
;----------------;

(require 'yasnippet)
(yas-global-mode 1)
