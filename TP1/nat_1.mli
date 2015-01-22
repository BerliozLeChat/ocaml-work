(*

type naturel
-- represente l'ensemble des entiers naturels

zero : unit -> naturel
-- pour representer l'entier naturel nul

suc : naturel -> naturel
-- pour representer le successeur d'un entier naturel

est_zero : naturel -> bool
-- pour tester la nullite d'un entier naturel

pre : naturel -> naturel
-- ne s'applique qu'a un entier naturel non nul
-- pour calculer le predecesseur d'un entier naturel non nul

affiche_naturel : Format.formatter -> naturel -> unit
-- apres evaluation de la directive suivante :
-- #install_printer affiche_naturel
-- affiche une representation externe des entiers naturels

*)

type naturel
val zero : unit -> naturel
val suc : naturel -> naturel
val est_zero : naturel -> bool
val pre : naturel -> naturel
val affiche_naturel : Format.formatter -> naturel -> unit