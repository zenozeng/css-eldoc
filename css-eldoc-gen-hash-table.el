;;; css-eldoc-gen-hash-table.el --- 

;; Copyright (C) 2012  Zeno Zeng

;; Author: Zeno Zeng <zenoes@qq.com>
;; Keywords: 

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

;; eval this buffer to gen css eldoc hash table

;;; Code:

(let (h)

  ;; create a hash table
  (setq h (make-hash-table :test 'equal))

  (puthash "azimuth" "<angle> | [[ left-side | far-left | left | center-left | center | center-right | right | far-right | right-side ] || behind ] | leftwards | rightwards | inherit" h)
  (puthash "background" "['background-color' || 'background-image' || 'background-repeat' || 'background-attachment' || 'background-position'] | inherit" h)
  (puthash "background-attachment" "scroll | fixed | inherit" h)
  (puthash "background-color" "color | transparent | inherit" h)
  (puthash "background-image" "uri | none | inherit" h)
  (puthash "background-position" "[ [ <percentage> | <length> | left | center | right ] [ <percentage> | <length> | top | center | bottom ]? ] | [ [ left | center | right ] || [ top | center | bottom ] ] | inherit" h)
  (puthash "background-repeat" "repeat | repeat-x | repeat-y | no-repeat | inherit" h)
  (puthash "border" "width sytle color" h)
  (puthash "border-top" "width sytle color" h)
  (puthash "border-bottom" "width sytle color" h)
  (puthash "border-left" "width sytle color" h)
  (puthash "border-right" "width sytle color" h)
  (puthash "border-collapse" "collapse | separate | inherit" h)
  (puthash "border-color" "[color | transparent]{1,4} | inhert" h)
  (puthash "border-spacing" "<length> <length>? | inherit" h)
  (puthash "border-style" "<border-style>{1,4} | inherit" h)
  (puthash "border-top-style" "style | inherit" h)
  (puthash "border-right-style" "style | inherit" h)
  (puthash "border-bottom-style" "style | inherit" h)
  (puthash "border-left-style" "style | inherit" h)
  (puthash "border-top-width" "width | inherit" h)
  (puthash "border-bottom-width" "width | inherit" h)
  (puthash "border-right-width" "width | inherit" h)
  (puthash "border-left-width" "width | inherit" h)
  (puthash "border-width" "width{1,4} | inherit" h)
  (puthash "bottom" "length | percentage | auto | inherit" h)
  (puthash "caption-side" "top | bottom | inherit" h)
  (puthash "clear" "none | left | right | both | inherit" h)
  (puthash "clip" "<shape> | auto | inherit" h)
  (puthash "color" "color | inherit" h)
  (puthash "content" "normal | none | [ <string> | <uri> | <counter> | attr(<identifier>) | open-quote | close-quote | no-open-quote | no-close-quote ]+ | inherit" h)
  (puthash "counter-increment" "[ <identifier> <integer>? ]+ | none | inherit" h)
  (puthash "counter-reset" "[ <identifier> <integer>? ]+ | none | inherit" h)
  (puthash "cue-after" "<uri> | none | inherit" h)
  (puthash "cue-before" "<uri> | none | inherit" h)
  (puthash "cue" "[cue-before || cue-after] | inherit" h)
  (puthash "cursor" "[ [<uri> ,]* [ auto | crosshair | default | pointer | move | e-resize | ne-resize | nw-resize | n-resize | se-resize | sw-resize | s-resize | w-resize | text | wait | help | progress ] ] | inherit" h)
  (puthash "direction" "ltr | rtl | inherit" h)
  (puthash "display" "inline | block | list-item | inline-block | table | inline-table | table-row-group | table-header-group | table-footer-group | table-row | table-column-group | table-column | table-cell | table-caption | none | inherit" h)
  (puthash "elevation" "<angle> | below | level | above | higher | lower | inherit" h)
  (puthash "empty-cells" "show | hide | inherit" h)
  (puthash "float" "left | right | none | inherit" h)
  (puthash "font-family" "[[ <family-name> | <generic-family> ] [, <family-name>| <generic-family>]* ] | inherit" h)
  (puthash "font-size" "<size> | inherit" h)
  (puthash "font-style" "normal | italic | oblique | inherit" h)
  (puthash "font-variant" "normal | small-caps | inherit" h)
  (puthash "font-weight" "normal | bold | bolder | lighter | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 | inherit" h)
  (puthash "font" "[ [ 'font-style' || 'font-variant' || 'font-weight' ]? 'font-size' [ / 'line-height' ]? 'font-family' ] | caption | icon | menu | message-box | small-caption | status-bar | inherit" h)
  (puthash "height" "<length> | <%> | auto | inherit" h)
  (puthash "left" "<length> | <percentage> | auto | inherit" h)
  (puthash "letter-spacing" "normal | <length> | inherit" h)
  (puthash "line-height" "normal | <number> | <length> | <percentage> | inherit" h)
  (puthash "list-style-image" "<uri> | none | inherit" h)
  (puthash "list-style-position" "inside | outside | inherit" h)
  (puthash "list-style-type" "disc | circle | square | decimal | decimal-leading-zero | lower-roman | upper-roman | lower-greek | lower-latin | upper-latin | armenian | georgian | lower-alpha | upper-alpha | none | inherit" h)
  (puthash "list-style" "[ 'list-style-type' || 'list-style-position' || 'list-style-image' ] | inherit" h)
  (puthash "margin-right" "width | inherit" h)
  (puthash "margin-left" "width | inherit" h)
  (puthash "margin-top" "width | inherit" h)
  (puthash "margin-bottom" "width | inherit" h)
  (puthash "margin" "value || top/bottom left/right || top right bottom left" h)
  (puthash "max-height" "<length> | <percentage> | none | inherit" h)
  (puthash "max-width" "<length> | <percentage> | none | inherit" h)
  (puthash "min-height" "<length> | <percentage> | inherit" h)
  (puthash "min-width" "<length> | <percentage> | inherit" h)
  (puthash "orphans" "<int> | inherit" h)
  (puthash "outline-color" "<color> | invert | inherit" h) 
  (puthash "outline-style" "<border-style> | inherit" h)
  (puthash "outline-width" "<border-width> | inherit" h)
  (puthash "outline" "[ 'outline-color' || 'outline-style' || 'outline-width' ] | inherit" h)
  (puthash "overflow" "visible | hidden | scroll | auto | inherit" h)
  (puthash "padding-top" "<width> | inherit" h)
  (puthash "padding-bottom" "<width> | inherit" h)
  (puthash "padding-left" "<width> | inherit" h)
  (puthash "padding-right" "<width> | inherit" h)
  (puthash "padding" "value || top/bottom left/right || top right bottom left" h)
  (puthash "page-break-after" "auto | always | avoid | left | right | inherit" h)
  (puthash "page-break-before" "auto | always | avoid | left | right | inherit" h)
  (puthash "page-break-inside" "avoid | auto | inherit" h)
  (puthash "pause-after" "<time> | <%> | inherit" h)
  (puthash "pause-befote" "<time> | <%> | inherit" h)
  (puthash "pause" "[[<time> | <%> ] {1,2}] | inherit ]" h)
  (puthash "pitch-range" "<number> | inherit" h)
  (puthash "pitch" "<frequency> | x-low | low | medium | high | x-high | inherit" h)
  (puthash "play-during" "<uri> [ mix || repeat ]? | auto | none | inherit" h)
  (puthash "position" "static | relative | absolute | fixed | inherit" h)
  (puthash "quotes" "[<string> <string>]+ | none | inherit" h)
  (puthash "richness" "<num> | inherit" h)
  (puthash "right" "<length> | <percentage> | auto | inherit" h)
  (puthash "speak-header" "once | always | inherit" h)
  (puthash "speak-numeral" "digits | continuous | inherit" h)
  (puthash "speak-punctuation" "code | none | inherit" h)
  (puthash "speak" "normal | none | spell-out | inherit" h)
  (puthash "speech-rate" "<number> | x-slow | slow | medium | fast | x-fast | faster | slower | inherit" h)
  (puthash "stress" "<num> | inherit" h)
  (puthash "text-align" "left | right | center | justify | inherit" h)
  (puthash "text-decoration" "none | [ underline || overline || line-through || blink ] | inherit" h)
  (puthash "text-indent" "<length> | <%> | inherit" h)
  (puthash "text-transform" "capitalize | uppercase | lowercase | none | inherit" h)
  (puthash "top" "<length> | <percentage> | auto | inherit" h)
  (puthash "transition" "[<'transition-property'> || <'transition-duration'> || <'transition-timing-function'> || <'transition-delay'> [, [<'transition-property'> || <'transition-duration'> || <'transition-timing-function'> || <'transition-delay'>]]* " h)
  (puthash "unicode-bidi" "normal | embed | bidi-override | inherit" h)
  (puthash "vertical-align" "baseline | sub | super | top | text-top | middle | bottom | text-bottom | <percentage> | <length> | inherit" h)
  (puthash "visibility" "visible | hidden | collapse | inherit" h)
  (puthash "voice-family" "[[<specific-voice> | <generic-voice> ],]* [<specific-voice> | <generic-voice> ] | inherit" h)
  (puthash "volume" "<number> | <percentage> | silent | x-soft | soft | medium | loud | x-loud | inherit" h)
  (puthash "white-space" "normal | pre | nowrap | pre-wrap | pre-line | inherit" h)
  (puthash "windows" "<int> | inherit" h)
  (puthash "width" "<length> | <percentage> | auto | inherit" h)
  (puthash "word-spacing" "normal | <length> | inherit" h)
  (puthash "z-index" "auto | <int> | inherit" h)

  (find-file "css-eldoc-hash-table.el")
  (kill-region (point-min) (point-max))
  (insert-string "(setq css-eldoc-hash-table ")
  (insert-string (prin1-to-string h))
  (insert-string ")")
  (insert-string "(provide 'css-eldoc-hash-table)")
  (save-buffer))

;;; css-eldoc-gen-hash-table.el ends here
