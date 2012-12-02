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

  (puthash "border" "width sytle color" h)

  (puthash "display" "inline | block | list-item | inline-block | table | inline-table | table-row-group | table-header-group | table-footer-group | table-row | table-column-group | table-column | table-cell | table-caption | none | inherit" h)

  (puthash "font" "[ [ 'font-style' || 'font-variant' || 'font-weight' ]? 'font-size' [ / 'line-height' ]? 'font-family' ] | caption | icon | menu | message-box | small-caption | status-bar | inherit" h)

  (puthash "text-decoration" "none | [ underline || overline || line-through || blink ] | inherit" h)

  (puthash "transition" "[<'transition-property'> || <'transition-duration'> || <'transition-timing-function'> || <'transition-delay'> [, [<'transition-property'> || <'transition-duration'> || <'transition-timing-function'> || <'transition-delay'>]]* " h)

  (puthash "margin" "top right bottom left" h)

  (find-file "css-eldoc-hash-table.el")
  (kill-region (point-min) (point-max))
  (insert-string "(setq css-eldoc-hash-table ")
  (insert-string (prin1-to-string h))
  (insert-string ")")
  (insert-string "
(provide 'css-eldoc-hash-table)")
  (save-buffer))

;;; css-eldoc-gen-hash-table.el ends here
