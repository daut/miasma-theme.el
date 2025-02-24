;;; miasma-theme.el --- Miasma: color theme inspired by the woods

;; Author: Bozidar Dautovic
;; URL: http://github.com/daut/miasma-theme.el
;; Version: 1.5.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Miasma: color theme inspired by the woods.
;; This is mostly a port of the NeoVim Miasma theme.

;;; Code:

(deftheme miasma
  "Miasma: color theme inspired by the woods."
  :background-mode 'dark
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))
      ;; Palette
      (miasma-light-charcoal "#222222")
      (miasma-charcoal "#1c1c1c")
      (miasma-obsidian "#151515")
      (miasma-graphite "#444444")
      (miasma-dark-gray "#666666")
      (miasma-light-gray "#c2c2b0")
      (miasma-marble "#eaeaea")
      (miasma-river "#1f3a5f")
      (miasma-sky "#87CEEB")
      (miasma-forest "#242d1d")
      (miasma-moss "#2f361f")
      (miasma-olive "#43492a")
      (miasma-ivy "#335533")
      (miasma-eucalyptus "#5f875f")
      (miasma-reseda "#78834b")
      (miasma-walnut "#685742")
      (miasma-tangerine "#fd9720")
      (miasma-copper "#bb7744")
      (miasma-cedar "#b36d43")
      (miasma-terracota "#c86448")
      (miasma-chestnut "#553333")
      (miasma-fire "#824040")
      (miasma-lemon "#fbec9f")
      (miasma-ecru "#d7c483")
      (miasma-brass "#c9a554"))

  (custom-theme-set-faces
   'miasma
   ;;;; Built-in packages
   ;;;;; Basic
   `(cursor ((,class (:background ,miasma-reseda))))
   `(default ((,class (:foreground ,miasma-light-gray :background ,miasma-light-charcoal))))
   `(error ((,class (:foreground ,miasma-terracota))))
   `(fringe ((,class (:background ,miasma-light-charcoal))))
   `(highlight ((,class (:background ,miasma-olive))))
   `(link ((,class (:foreground ,miasma-brass :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,miasma-walnut :underline t :weight normal))))
   `(match ((,class (:background ,miasma-river))))
   `(region ((,class (:background ,miasma-moss))))
   `(secondary-selection ((,class (:background ,miasma-olive))))
   `(shadow ((,class (:foreground ,miasma-dark-gray))))
   `(success ((,class (:foreground ,miasma-eucalyptus))))
   `(trailing-whitespace ((,class (:background ,miasma-fire))))
   `(vertical-border ((,class (:foreground ,miasma-olive))))
   `(warning ((,class (:foreground ,miasma-tangerine))))

   ;;;;; compilation
   `(compilation-mode-line-exit ((,class (:foreground ,miasma-eucalyptus))))
   `(compilation-mode-line-fail ((,class (:foreground ,miasma-terracota))))

   ;;;;; completions
   `(completions-annotations ((,class (:foreground ,miasma-reseda))))
   `(completions-common-part ((,class (:foreground ,miasma-eucalyptus))))


   ;;;;; diff
   `(diff-added ((,class (:extend t :background ,miasma-ivy :foreground ,miasma-marble))))
   `(diff-removed ((,class (:extend t :background ,miasma-chestnut :foreground ,miasma-marble))))
   `(diff-refine-added ((,class (:background ,miasma-eucalyptus))))
   `(diff-refine-removed ((,class (:background ,miasma-fire))))

   ;;;;; dired
   `(dired-directory ((,class (:foreground ,miasma-eucalyptus))))
   `(dired-symlink ((,class (:foreground ,miasma-lemon))))

   ;;;;; flyspell
   `(flyspell-duplicate ((,class :underline (:style wave :color ,miasma-tangerine))))
   `(flyspell-incorrect ((,class :underline (:style wave :color ,miasma-terracota))))

   ;;;;; font lock
   `(font-lock-comment-face ((,class (:foreground ,miasma-dark-gray))))
   `(font-lock-constant-face ((,class (:foreground ,miasma-copper))))
   `(font-lock-function-name-face ((,class (:foreground ,miasma-reseda))))
   `(font-lock-keyword-face ((,class (:foreground ,miasma-eucalyptus))))
   `(font-lock-preprocessor-face ((,class (:foreground ,miasma-cedar))))
   `(font-lock-string-face ((,class (:foreground ,miasma-walnut :weight bold))))
   `(font-lock-type-face ((,class (:foreground ,miasma-brass))))
   `(font-lock-variable-name-face ((,class (:foreground ,miasma-lemon))))
   `(font-lock-variable-use-face ((,class (:foreground ,miasma-lemon))))
   `(font-lock-warning-face ((,class (:foreground ,miasma-tangerine))))
   `(font-lock-builtin-face ((,class (:foreground ,miasma-light-gray))))

   ;;;;; info
   `(info-menu-star ((,class (:foreground ,miasma-terracota))))

   ;;;;; isearch
   `(isearch ((,class (:foreground ,miasma-light-charcoal :background ,miasma-tangerine))))
   `(isearch-group-1 ((,class (:foreground ,miasma-light-charcoal :background ,miasma-ecru))))
   `(isearch-group-2 ((,class (:foreground ,miasma-light-charcoal :background ,miasma-brass))))
   `(isearch-fail ((,class (:background ,miasma-fire))))

   ;;;;; line numbers
   `(line-number ((,class (:inherit default :foreground ,miasma-dark-gray))))
   `(line-number-current-line ((,class (:background ,miasma-charcoal :inherit default))))

   ;;;;; message
   `(message-cited-text ((,class (:foreground ,miasma-dark-gray))))
   `(message-header-cc ((,class (:foreground ,miasma-reseda))))
   `(message-header-other ((,class (:foreground ,miasma-light-gray))))
   `(message-header-subject ((,class (:foreground ,miasma-lemon))))
   `(message-header-to ((,class (:foreground ,miasma-lemon))))
   `(message-separator ((,class (:foreground ,miasma-dark-gray))))
   `(message-header-name ((,class (:foreground ,miasma-reseda))))

   ;;;;; minibuffer
   `(minibuffer-prompt ((,class (:foreground ,miasma-ecru))))

   ;;;;; mode line
   `(mode-line ((,class (:background ,miasma-forest))))
   `(mode-line-inactive ((,class (:foreground ,miasma-light-gray :background ,miasma-graphite))))

   ;;;;; org
   `(org-block ((,class (:background ,miasma-obsidian, :extend t))))
   `(org-date ((,class (:foreground ,miasma-sky :underline (:style line)))))
   `(org-document-title ((,class (:foreground ,miasma-copper))))
   `(org-done ((,class (:foreground ,miasma-olive :weight bold))))
   `(org-footnote ((,class (:foreground ,miasma-sky :underline t))))
   `(org-headline-done ((,class (:foreground ,miasma-dark-gray :weight bold))))
   `(org-headline-todo ((,class (:foreground ,miasma-eucalyptus :weight bold))))
   `(org-todo ((,class (:foreground ,miasma-brass :weight bold))))

   ;;;;; smerge-mode
   `(smerge-base ((,class (:background ,miasma-reseda :extend t))))
   `(smerge-lower ((,class (:background ,miasma-ivy :extend t))))
   `(smerge-markers ((,class (:background ,miasma-dark-gray :extend t))))
   `(smerge-refined-added ((,class (:background ,miasma-eucalyptus))))
   `(smerge-refined-removed ((,class (:background ,miasma-fire))))
   `(smerge-upper ((,class (:background ,miasma-chestnut :extend t))))

   ;;;;; tab-line
   `(tab-line ((,class (:background ,miasma-charcoal :foreground ,miasma-light-gray))))

   ;;;;; whitespace-mode
   `(whitespace-space ((,class (:background ,(if (bound-and-true-p solaire-mode) miasma-charcoal miasma-light-charcoal) :foreground ,miasma-dark-gray))))
   `(whitespace-tab ((,class (:background ,(if (bound-and-true-p solaire-mode) miasma-charcoal miasma-light-charcoal) :foreground ,miasma-dark-gray))))
   `(whitespace-line ((,class (:background ,miasma-forest))))
   `(whitespace-trailing ((,class (:background ,miasma-chestnut))))
   `(whitespace-empty ((,class (:background ,miasma-fire))))
   `(whitespace-newline ((,class (:foreground ,miasma-dark-gray))))
   `(whitespace-big-indent ((,class (:foreground ,miasma-terracota :background ,miasma-fire))))
   `(whitespace-indentation ((,class (:foreground ,miasma-chestnut :background ,miasma-lemon))))
   `(whitespace-space-after-tab ((,class (:foreground ,miasma-chestnut :background ,miasma-lemon))))
   `(whitespace-space-before-tab ((,class (:foreground ,miasma-chestnut :background ,miasma-tangerine))))
   `(whitespace-missing-newline-at-eof ((,class (:foreground ,miasma-charcoal :background ,miasma-lemon))))

   ;;;;; window-divider-mode
   `(window-divider ((,class (:foreground ,miasma-olive))))
   `(window-divider-first-pixel ((,class (:foreground ,miasma-olive))))
   `(window-divider-last-pixel ((,class (:foreground ,miasma-olive))))

   ;;;; Third-party packages

   ;;;;; ace-window
   `(aw-leading-char-face ((,class :foreground ,miasma-terracota :height 1.5 :weight bold)))
   `(aw-minibuffer-leading-char-face ((,class :foreground ,miasma-terracota)))

   ;;;;; avy
   `(avy-goto-char-timer-face ((,class :background ,miasma-olive :weight bold)))
   `(avy-lead-face-0 ((,class :foreground ,miasma-light-gray :background ,miasma-river :weight bold)))
   `(avy-lead-face-1 ((,class :foreground ,miasma-light-gray :background ,miasma-dark-gray :weight bold)))
   `(avy-lead-face-2 ((,class :background ,miasma-lemon :weight bold)))
   `(avy-lead-face ((,class :foreground ,miasma-light-gray :background ,miasma-terracota :weight bold)))

   ;;;;; beacon
   `(beacon-fallback-background ((,class :background ,miasma-ivy)))

   ;;;;; centaur-tabs
   `(centaur-tabs-default ((,class (:foreground ,miasma-light-gray :background ,miasma-light-charcoal))))
   `(centaur-tabs-selected ((,class (:foreground ,miasma-light-gray :background ,miasma-light-charcoal))))
   `(centaur-tabs-unselected ((,class (:foreground ,miasma-dark-gray :background ,miasma-charcoal))))
   `(centaur-tabs-selected-modified ((,class (:foreground ,miasma-lemon :background ,miasma-light-charcoal))))
   `(centaur-tabs-unselected-modified ((,class (:foreground ,miasma-brass :background ,miasma-charcoal))))
   `(centaur-tabs-close-selected ((,class (:foreground ,miasma-light-gray :background ,miasma-light-charcoal))))
   `(centaur-tabs-close-unselected ((,class (:foreground ,miasma-dark-gray :background ,miasma-charcoal))))
   `(centaur-tabs-close-mouse-face ((,class (:background ,miasma-ivy))))
   `(centaur-tabs-active-bar-face ((,class (:background ,miasma-ivy))))
   `(centaur-tabs-modified-marker-selected ((,class (:foreground ,miasma-lemon :background ,miasma-light-charcoal))))
   `(centaur-tabs-modified-marker-unselected ((,class (:foreground ,miasma-brass :background ,miasma-charcoal))))

   ;;;;; company
   `(company-echo-common ((,class (:inherit company-tooltip-common))))
   `(company-tooltip-annotation ((,class (:foreground ,miasma-copper))))
   `(company-tooltip-common ((,class (:foreground ,miasma-eucalyptus))))
   `(company-tooltip-quick-access ((,class (:foreground ,miasma-lemon))))
   `(company-tooltip-scrollbar-thumb ((,class (:background ,miasma-moss))))
   `(company-tooltip-selection ((,class (:background ,miasma-olive))))
   `(company-tooltip ((,class (:foreground ,miasma-light-gray :background ,miasma-obsidian :extend t))))

   ;;;;; copilot-mode
   `(copilot-overlay-face ((,class (:foreground ,miasma-graphite))))

   ;;;;; diredfl
   `(diredfl-compressed-file-name ((,class :foreground ,miasma-lemon)))
   `(diredfl-compressed-file-suffix ((,class :foreground ,miasma-cedar)))
   `(diredfl-date-time ((,class (:foreground ,miasma-brass))))
   `(diredfl-deletion ((,class :foreground ,miasma-terracota)))
   `(diredfl-deletion-file-name ((,class :foreground ,miasma-terracota)))
   `(diredfl-dir-heading ((,class (:foreground ,miasma-light-gray))))
   `(diredfl-dir-name ((,class (:inherit dired-directory))))
   `(diredfl-dir-priv ((,class (:foreground ,miasma-walnut))))
   `(diredfl-exec-priv ((,class (:foreground ,miasma-tangerine))))
   `(diredfl-file-name ((,class (:foreground ,miasma-light-gray))))
   `(diredfl-file-suffix ((,class (:foreground ,miasma-reseda))))
   `(diredfl-flag-mark ((,class (:foreground ,miasma-tangerine))))
   `(diredfl-flag-mark-line ((,class (:foreground ,miasma-tangerine))))
   `(diredfl-no-priv ((,class (:foreground ,miasma-olive))))
   `(diredfl-number ((,class (:foreground ,miasma-reseda))))
   `(diredfl-read-priv ((,class (:foreground ,miasma-eucalyptus))))
   `(diredfl-symlink ((,class (:inherit dired-symlink))))
   `(diredfl-write-priv ((,class (:foreground ,miasma-cedar))))

   ;;;;; doom-modeline
   `(doom-modeline-bar ((,class (:background ,miasma-eucalyptus))))
   `(doom-modeline-buffer-path ((,class (:foreground ,miasma-eucalyptus))))
   `(doom-modeline-buffer-modified ((,class (:foreground ,miasma-lemon))))
   `(doom-modeline-project-dir ((,class (:foreground ,miasma-eucalyptus))))

   ;;;;; elfeed
   `(elfeed-log-debug-level-face ((,class (:foreground ,miasma-sky))))
   `(elfeed-log-error-level-face ((,class (:foreground ,miasma-terracota))))
   `(elfeed-log-info-level-face ((,class (:foreground ,miasma-eucalyptus))))
   `(elfeed-log-warn-level-face ((,class (:foreground ,miasma-tangerine))))
   `(elfeed-search-feed-face ((,class (:foreground ,miasma-brass))))
   `(elfeed-search-filter-face ((,class (:foreground ,miasma-light-gray))))
   `(elfeed-search-last-update-face ((,class (:foreground ,miasma-eucalyptus))))
   `(elfeed-search-tag-face ((,class (:foreground ,miasma-lemon))))
   `(elfeed-search-title-face ((,class (:foreground ,miasma-dark-gray))))
   `(elfeed-search-unread-count-face ((,class (:foreground ,miasma-light-gray))))
   `(elfeed-search-unread-title-face ((,class (:foreground ,miasma-light-gray))))
   `(elfeed-search-date-face ((,class (:foreground ,miasma-eucalyptus))))

   ;;;;; flycheck
   `(flycheck-info ((,class (:underline (:style wave :color ,miasma-eucalyptus)))))
   `(flycheck-error ((,class (:underline (:style wave :color ,miasma-terracota)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,miasma-tangerine)))))

   ;;;;; git-gutter
   `(git-gutter:added ((,class (:foreground ,miasma-eucalyptus :weight bold))))
   `(git-gutter:deleted ((,class (:foreground ,miasma-terracota :weight bold))))
   `(git-gutter:modified ((,class (:foreground ,miasma-ecru :weight bold))))

   ;;;;; hl-line
   `(hl-line ((,class (:background ,miasma-charcoal))))

   ;;;;; lsp
   `(lsp-modeline-code-actions-face ((,class (:foreground ,miasma-olive))))
   `(lsp-face-highlight-read ((,class (:underline t :background ,miasma-moss))))

   ;;;;; magit
   `(magit-bisect-bad ((,class (:foreground ,miasma-fire))))
   `(magit-bisect-good ((,class (:foreground ,miasma-olive))))
   `(magit-bisect-skip ((,class (:foreground ,miasma-brass))))
   `(magit-bisect-skip ((,class (:foreground ,miasma-brass))))
   `(magit-blame-highlight ((,class (:foreground ,miasma-marble :background ,miasma-dark-gray :extend t))))
   `(magit-branch-local ((,class (:foreground ,miasma-copper))))
   `(magit-branch-local ((,class (:foreground ,miasma-copper))))
   `(magit-branch-local ((,class (:foreground ,miasma-copper))))
   `(magit-branch-remote ((,class (:foreground ,miasma-reseda))))
   `(magit-cherry-equivalent ((,class (:foreground ,miasma-terracota))))
   `(magit-cherry-equivalent ((,class (:foreground ,miasma-terracota))))
   `(magit-cherry-unmatched ((,class (:foreground ,miasma-sky))))
   `(magit-diff-added-highlight ((,class (:inherit diff-added))))
   `(magit-diff-base ((,class (:foreground ,miasma-lemon :background ,miasma-walnut :extend t))))
   `(magit-diff-base-highlight ((,class (:foreground ,miasma-lemon :background ,miasma-olive))))
   `(magit-diff-context ((,class (:foreground ,miasma-dark-gray :extend t))))
   `(magit-diff-context-highlight ((,class (:foreground ,miasma-light-gray :background ,miasma-light-charcoal))))
   `(magit-diff-file-heading ((,class (:foreground ,miasma-reseda))))
   `(magit-diff-hunk-heading ((,class (:foreground ,miasma-light-gray :background ,miasma-graphite))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,miasma-light-gray :background ,miasma-graphite :extend t))))
   `(magit-diff-hunk-heading-selection ((,class (:foreground ,miasma-cedar :extend t :inherit magit-diff-heading-highlight))))
   `(magit-diff-lines-heading ((,class (:foreground ,miasma-light-gray :background ,miasma-copper))))
   `(magit-diff-removed-highlight ((,class (:inherit diff-removed))))
   `(magit-diffstat-added ((,class (:foreground ,miasma-olive))))
   `(magit-diffstat-removed ((,class (:foreground ,miasma-fire))))
   `(magit-dimmed ((,class (:foreground ,miasma-graphite))))
   `(magit-hash ((,class (:foreground ,miasma-olive))))
   `(magit-log-author ((,class (:foreground ,miasma-terracota))))
   `(magit-log-author ((,class (:foreground ,miasma-terracota))))
   `(magit-log-date ((,class (:foreground ,miasma-light-gray))))
   `(magit-log-graph ((,class (:foreground ,miasma-light-gray))))
   `(magit-process-ng ((,class (:foreground ,miasma-fire))))
   `(magit-process-ok ((,class (:foreground ,miasma-eucalyptus))))
   `(magit-reflog-amend ((,class (:foreground ,miasma-tangerine))))
   `(magit-reflog-checkout ((,class (:foreground ,miasma-river))))
   `(magit-reflog-checkout ((,class (:foreground ,miasma-river))))
   `(magit-reflog-commit ((,class (:foreground ,miasma-eucalyptus))))
   `(magit-reflog-merge ((,class (:foreground ,miasma-reseda))))
   `(magit-reflog-rebase ((,class (:foreground ,miasma-terracota))))
   `(magit-reflog-remote ((,class (:foreground ,miasma-sky))))
   `(magit-reflog-reset ((,class (:foreground ,miasma-fire))))
   `(magit-reflog-reset ((,class (:foreground ,miasma-fire))))
   `(magit-refname ((,class (:foreground ,miasma-light-gray))))
   `(magit-section-heading ((,class (:foreground ,miasma-lemon :weight bold :extend t))))
   `(magit-section-heading-selection ((,class (:foreground ,miasma-cedar :extend t :inherit magit-diff-file-heading-highlight))))
   `(magit-section-heading-selection ((,class (:foreground ,miasma-cedar :extend t))))
   `(magit-section-highlight ((,class (:background ,miasma-light-charcoal))))
   `(magit-sequence-drop ((,class (:foreground ,miasma-fire))))
   `(magit-sequence-head ((,class (:foreground ,miasma-sky))))
   `(magit-sequence-part ((,class (:foreground ,miasma-lemon))))
   `(magit-sequence-part ((,class (:foreground ,miasma-lemon))))
   `(magit-sequence-stop ((,class (:foreground ,miasma-reseda))))
   `(magit-signature-error ((,class (:foreground ,miasma-sky))))
   `(magit-signature-expired ((,class (:background ,miasma-tangerine))))
   `(magit-signature-revoked ((,class (:background ,miasma-terracota))))
   `(magit-signature-untrusted ((,class (:foreground ,miasma-reseda))))
   `(magit-tag ((,class (:foreground ,miasma-lemon))))

   ;;;;; olivetti
   `(olivetti-fringe ((,class (:background ,(if (bound-and-true-p solaire-mode) miasma-charcoal nil)))))

   ;;;;; org-modern
   `(org-modern-done ((,class (:foreground ,miasma-olive :background ,miasma-light-gray :inverse-video t :inherit (org-done org-modern-label)))))
   `(org-modern-tag ((,class (:foreground ,miasma-light-gray :inherit (secondary-selection org-modern-label)))))

   ;;;;; orderless
   `(orderless-match-face-0 ((,class :inherit bold :foreground ,miasma-tangerine)))
   `(orderless-match-face-1 ((,class :inherit bold :foreground ,miasma-lemon)))
   `(orderless-match-face-2 ((,class :inherit bold :foreground ,miasma-eucalyptus)))
   `(orderless-match-face-3 ((,class :inherit bold :foreground ,miasma-cedar)))

   ;;;;; persp-mode
   `(persp-selected-face ((,class (:foreground ,miasma-lemon))))

   ;;;;; rainbow-delimiters
   `(rainbow-delimiters-base-face ((,class (:foreground ,miasma-reseda :weight bold))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,miasma-brass :weight bold))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,miasma-copper :weight bold))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,miasma-lemon :weight bold))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,miasma-eucalyptus :weight bold))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,miasma-cedar :weight bold))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,miasma-walnut :weight bold))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,miasma-reseda :weight bold))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,miasma-tangerine :weight bold))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,miasma-dark-gray :weight bold))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,miasma-ecru :weight bold))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,miasma-olive :weight bold))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,miasma-obsidian :weight bold))))

   ;;;;; solaire
   `(solaire-default-face ((,class (:background ,miasma-charcoal))))
   `(solaire-hl-line-face ((,class (:background ,miasma-obsidian))))

   ;;;;; show-paren
   `(show-paren-match ((,class (:background ,miasma-moss :weight bold))))

   ;;;;; transient
   `(transient-inactive-value ((,class :foreground ,miasma-graphite)))
   `(transient-key-exit ((,class :foreground ,miasma-cedar)))
   `(transient-key-stay ((,class :foreground ,miasma-ecru)))
   `(transient-key-stack ((,class :foreground ,miasma-tangerine)))

   ;;;;; vertico
   `(vertico-current ((,class (:background ,miasma-olive :extend t))))
   `(vertico-posframe-border ((,class (:background ,miasma-walnut))))
   `(vertico-posframe-border-2 ((,class (:background ,miasma-tangerine))))
   `(vertico-posframe-border-3 ((,class (:background ,miasma-cedar))))
   `(vertico-posframe-border-4 ((,class (:background ,miasma-ecru))))

   ;;;;; vterm
   `(vterm-color-black ((,class (:foreground ,miasma-charcoal :background ,miasma-graphite))))
   `(vterm-color-red ((,class (:foreground ,miasma-terracota :background ,miasma-chestnut))))
   `(vterm-color-green ((,class (:foreground ,miasma-eucalyptus :background ,miasma-moss))))
   `(vterm-color-yellow ((,class (:foreground ,miasma-ecru :background ,miasma-olive))))
   `(vterm-color-blue ((,class (:foreground ,miasma-river :background ,miasma-obsidian))))
   `(vterm-color-magenta ((,class (:foreground ,miasma-cedar :background ,miasma-chestnut))))
   `(vterm-color-cyan ((,class (:foreground ,miasma-eucalyptus :background ,miasma-forest))))
   `(vterm-color-white ((,class (:foreground ,miasma-marble :background ,miasma-dark-gray))))
   `(vterm-color-bright-black ((,class (:foreground ,miasma-graphite :background ,miasma-dark-gray))))
   `(vterm-color-bright-red ((,class (:foreground ,miasma-tangerine :background ,miasma-chestnut))))
   `(vterm-color-bright-green ((,class (:foreground ,miasma-reseda :background ,miasma-ivy))))
   `(vterm-color-bright-yellow ((,class (:foreground ,miasma-lemon :background ,miasma-brass))))
   `(vterm-color-bright-blue ((,class (:foreground ,miasma-sky :background ,miasma-river))))
   `(vterm-color-bright-magenta ((,class (:foreground ,miasma-tangerine :background ,miasma-cedar))))
   `(vterm-color-bright-cyan ((,class (:foreground ,miasma-reseda :background ,miasma-forest))))
   `(vterm-color-bright-white ((,class (:foreground ,miasma-marble :background ,miasma-light-gray))))

   ;;;;; web-mode
   `(web-mode-html-attr-engine-face ((,class (:foreground ,miasma-reseda))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,miasma-reseda))))
   `(web-mode-html-tag-bracket-face ((,class (:foreground ,miasma-eucalyptus))))
   `(web-mode-html-tag-face ((,class (:foreground ,miasma-eucalyptus))))

   ;;;;; wgrep
   `(wgrep-face ((,class (:background ,miasma-brass :foreground ,miasma-light-charcoal))))
   `(wgrep-done-face ((,class (:foreground ,miasma-brass))))
   `(wgrep-delete-face ((,class (:background ,miasma-terracota))))
   `(wgrep-file-face ((,class (:background ,miasma-graphite))))
   `(wgrep-reject-face ((,class (:foreground ,miasma-terracota))))))

;;; Footer

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'miasma)

;; Local Variables:
;; no-byte-compile: t
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; miasma-theme.el ends here
