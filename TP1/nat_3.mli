(*

type naturel
-- represente l'ensemble des entiers naturels

zero : unit -> naturel
-- pour representer l'entier naturel nul

d0 : naturel -> naturel
-- pour representer le double d'un entier naturel non nul

d1 : naturel -> naturel
-- pour representer le successeur du double d'un entier naturel

est_pair_et_non_nul : naturel -> bool
-- pour déterminer si un entier naturel est pair et non nul

est_impair : naturel -> bool
-- pour déterminer si un entier naturel est impair

inv_d0 : naturel -> naturel
-- ne s'applique qu'a un entier naturel pair et non nul
-- pour calculer la moitie entiere d'un entier naturel pair et non nul

inv_d1 : naturel -> naturel
-- ne s'applique qu'a un entier naturel impair
-- pour calculer la moitie entiere d'un entier naturel impair

affiche_naturel : Format.formatter -> naturel -> unit
-- apres evaluation de la directive suivante :
-- #install_printer affiche_naturel
-- affiche une representation externe des entiers naturels

*)

type naturel
val zero : unit -> naturel
val d0 : naturel -> naturel
val d1 : naturel -> naturel
val est_pair_et_non_nul : naturel -> bool
val est_impair : naturel -> bool
val inv_d0 : naturel -> naturel
val inv_d1 : naturel -> naturel
val affiche_naturel : Format.formatter -> naturel -> unit
