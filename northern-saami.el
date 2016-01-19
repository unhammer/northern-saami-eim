;;; northern-saami.el --- Northern Saami input method for Emacs

;; Copyright (C) 2015 Kevin Brubeck Unhammer

;; Author: Kevin Brubeck Unhammer <unhammer@fsfe.org>
;; Version: 0.1.1
;; Url: https://github.com/unhammer/northern-saami-eim
;; Keywords: multilingual, input method, Northern Saami, i18n

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
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

;; So far only tested with a Norwegian physical keyboard and Norwegian
;; GNU/Linux keyboard layout; mappings for other configurations TODO
;; if anyone has suggestions.

;; Usage:

;; Put the following in your ~/.emacs.d/init.el:

;; (register-input-method
;;  "northern-saami" "Northern Saami / davvisámegiella" 'quail-use-package
;;  "DS" "Northern Saami keyboard layout for Norwegian keyboards"
;;  "quail/northern-saami")

;; and do `C-\' (or `C-u C-\'), selecting "northern-saami".

;;; Code:

(defconst northern-saami-version "0.1.1"
  "Version of Northern Saami input method")

(quail-define-package
 "northern-saami" "Northern Saami / davvisámegiella" "DS" nil
 "Northern Saami keyboard layout for Norwegian keyboards.

The ŧ is on alt-gr + t (as with regular GNU/Linux layouts), and
the ŋ is on ¨/^/~. The typical Norwegian layout uses deadkeys, so
you'll have to press the ¨/^/~ key twice to get ŋ; but you can
still use that key to compose letters like ï (used in South
Saami).

Shift + alt-gr + t gives Ŧ, while shift and a double press of the
¨/^/~ key gives Ŋ.

The regular GNU/Linux Saami layout doesn't give a way to type
</>; I've mapped these to the regular </> key combined with
alt+gr (shadowing the rarely-if-ever-used ǯ/Ǯ).
" nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ("q" ?á)
 ("w" ?š)
 ("e" ?e)
 ("r" ?r)
 ("t" ?t)
 ("y" ?y)
 ("u" ?u)
 ("i" ?i)
 ("o" ?o)
 ("p" ?p)
 ("å" ?å)
 ("¨" ?ŋ)
 ("a" ?a)
 ("s" ?s)
 ("d" ?d)
 ("f" ?f)
 ("g" ?g)
 ("h" ?h)
 ("j" ?j)
 ("k" ?k)
 ("l" ?l)
 ("ø" ?ø)
 ("æ" ?æ)
 ("'" ?đ)
 ("<" ?ž)
 ("z" ?z)
 ("x" ?č)
 ("c" ?c)
 ("v" ?v)
 ("b" ?b)
 ("n" ?n)
 ("m" ?m)
 ("," ?,)
 ("." ?.)
 ("-" ?-)
 ("Q" ?Á)
 ("W" ?Š)
 ("E" ?E)
 ("R" ?R)
 ("T" ?T)
 ("Y" ?Y)
 ("U" ?U)
 ("I" ?I)
 ("O" ?O)
 ("P" ?P)
 ("Å" ?Å)
 ("^" ?Ŋ)
 ("A" ?A)
 ("S" ?S)
 ("D" ?D)
 ("F" ?F)
 ("G" ?G)
 ("H" ?H)
 ("J" ?J)
 ("K" ?K)
 ("L" ?L)
 ("Ø" ?Ø)
 ("Æ" ?Æ)
 ("*" ?Đ)
 (">" ?Ž)
 ("Z" ?Z)
 ("X" ?Č)
 ("C" ?C)
 ("V" ?V)
 ("B" ?B)
 ("N" ?N)
 ("M" ?M)
 (";" ?\;)
 (":" ?:)
 ("_" ?_)
 ;; alt-gr + t:
 ("Þ" ?Ŧ)
 ("þ" ?ŧ)
 ;; alt-gr + </> for </>:
 ("½" ?<)
 ("¾" ?>))


;; Local Variables:
;; coding: utf-8
;; End:

;;; northern-saami.el ends here



