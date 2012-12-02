;;; css-eldoc.el --- 

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

;; 

;;; Code:
(eval-when-compile
  (require 'cl nil t))

(require 'css-eldoc-hash-table)

(defun css-eldoc-function()
  (ignore-errors
    (save-excursion
      (save-restriction
	(narrow-to-region (line-beginning-position) (point))
	(let* ((beg (+ 1 (re-search-backward "\\(;\\|{\\)" nil t)))
	       (end (- (re-search-forward ":" nil t) 1))
	       (property (buffer-substring-no-properties beg end)))

	  (setq property (replace-regexp-in-string " " "" property))


	  (replace-regexp-in-string "|"
				    (propertize "|" 'face 'compilation-mode-line-run)
				    (gethash property css-eldoc-hash-table)))))))

(provide 'css-eldoc)
;;; css-eldoc.el ends here
