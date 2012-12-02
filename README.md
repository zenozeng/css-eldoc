CSS Eldoc Plugin
====================

*ATTENTION: I have not finished it yet*

This is css-eldoc, a eldoc-mode plugin for CSS source code.

Eldoc-mode is a MinorMode which shows you, in the echo area, the argument list of the function call you are currently writing. Very handy. By NoahFriedman. 

![Alt text](https://raw.github.com/zenozeng/css-eldoc/master/screenshot.png)

Usage
======

```emacs-lisp
(require 'css-eldoc)
(add-hook 'css-mode-hook
	  '(lambda ()
	     (set
  	      (make-local-variable 'eldoc-documentation-function)
  	      'css-eldoc-function)
 	     (eldoc-mode)))
```
   
Licensing
=========

This software is licensed under the GPL v3

Copyright (C) 2012  Zeno Zeng

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
   

