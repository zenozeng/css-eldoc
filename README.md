# CSS Eldoc Plugin

*ATTENTION: I have not finished CSS3 properties yet.*

This is css-eldoc, an eldoc-mode plugin for CSS source code.

Eldoc-mode is a MinorMode which shows you, in the echo area, the argument list of the function call you are currently writing. Very handy. By NoahFriedman. 

![Alt text](https://raw.github.com/zenozeng/css-eldoc/master/screenshot.png)

## Usage

Use https://github.com/dimitri/el-get for an easy install, or put the css-eldoc somewhere in your load-path.

After aquiring the files, put the following in the your .emacs `(turn-on-css-eldoc)`


## Attention!

If your less mode's isearch became really slow, add the following code to your .emacs

```emacs-lisp
(defun isearch-forward-noeldoc ()
  "close eldoc temperaily"
  (interactive)
  (eldoc-mode -1)
  (isearch-forward)
  (eldoc-mode 1))
(add-hook 'less-css-mode-hook (lambda ()
				(local-set-key [remap isearch-forward] 'isearch-forward-noeldoc)))

(defun isearch-backward-noeldoc ()
  "close eldoc temperaily"
  (interactive)
  (eldoc-mode -1)
  (isearch-backward)
  (eldoc-mode 1))
(add-hook 'less-css-mode-hook (lambda ()
				(local-set-key [remap isearch-backward] 'isearch-backward-noeldoc)))
```
   
## Licensing

This software is licensed under the GPL v3

Copyright (C) 2012-2013 Zeno Zeng

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
   
## Current Completed Work

- CSS Multi-column Layout Module (W3C Candidate Recommendation 12 April 2011)

- CSS Image Values and Replaced Content Module Level 3 (W3C Candidate Recommendation 17 April 2012)

- CSS Marquee Module Level 3 (W3C Candidate Recommendation 5 December 2008)

- CSS Backgrounds and Borders Module Level 3 (W3C Candidate Recommendation 24 July 2012)

- CSS Snapshot 2010

## TODO List

- CSS Speech

- CSS Values and Units Level 3

- CSS Flexible Box Layout

- CSS Text Decoration Module Level 3

- CSS Mobile Profile 2.0

- CSS TV Profile 1.0

- CSS Animations

- CSS Fonts Level 3

- CSS Counter Styles Level 3

- CSS Text Level 3

- CSS Fragmentation Level 3

- CSS Transforms

- CSS Transitions

- Cascading Variables

- CSS Writing Modes Level 3

- CSS Cascading and Inheritance Level 3

- CSS Paged Media Level 3

- CSS Basic User Interface Level 3

- CSSOM View

- CSS Box Alignment Module Level 3

- CSS Backgrounds and Borders Level 4

- Compositing and Blending

- CSS Device Adaptation

- CSS Exclusions and Shapes

- Filter Effects

- CSS Generated Content for Paged Media

- CSS Grid Layout

- CSS (Grid) Template Layout

- CSS Intrinsic & Extrinsic Sizing Module Level 3

- CSS Line Grid

- CSS Lists Level 3

- CSS Positioned Layout Level 3

- CSS Presentation Levels

- CSS Regions

- CSS Tables Level 3

- Selectors Level 4

- CSS Object Model

- CSS Masking

- CSS Overflow

- CSS Basic Box Model Level 3

- CSS Generated Content Level 3

- CSS Line Layout Level 3

- CSS Ruby

- CSS Syntax Level 3
