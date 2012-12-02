;;; css-eldoc-gen-ac-dict.el --- 

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

;; get All Keys
(defun pull-keys (key value)
  (insert key)
  (insert "\n"))

(find-file "css-ac-dict")
(kill-region (point-min) (point-max))
(maphash 'pull-keys css-eldoc-hash-table)
(save-buffer)
;;; css-eldoc-gen-ac-dict.el ends here
