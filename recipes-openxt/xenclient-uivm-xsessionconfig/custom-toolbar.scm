(define toolbar-show-action-based-switcher-button? #t)
(define imsw-coverage 'system-global)
(define toolbar-show-switcher-button? #f)
(define toolbar-show-pref-button? #f)
(define toolbar-show-dict-button? #f)
(define toolbar-show-input-pad-button? #f)
(define toolbar-show-handwriting-input-pad-button? #f)
(define toolbar-show-help-button? #f)
(define anthy-widgets '(widget_anthy_input_mode widget_anthy_kana_input_method))
(define default-widget_anthy_input_mode 'action_anthy_direct)
(define anthy-input-mode-actions '(action_anthy_direct action_anthy_hiragana action_anthy_katakana action_anthy_halfkana action_anthy_halfwidth_alnum action_anthy_fullwidth_alnum))
(define default-widget_anthy_kana_input_method 'action_anthy_roma)
(define anthy-kana-input-method-actions '(action_anthy_roma action_anthy_kana action_anthy_azik))
(define skk-widgets '(widget_skk_input_mode widget_skk_kana_input_method))
(define default-widget_skk_input_mode 'action_skk_latin)
(define skk-input-mode-actions '(action_skk_latin action_skk_hiragana action_skk_katakana action_skk_hankana action_skk_wide_latin))
(define default-widget_skk_kana_input_method 'action_skk_roma)
(define skk-kana-input-method-actions '(action_skk_roma action_skk_azik))
