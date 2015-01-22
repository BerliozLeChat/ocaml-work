(*

type naturel
-- represente l'ensemble des entiers naturels

zero : unit -> naturel
-- pour representer l'entier naturel 0

un : unit -> naturel
-- pour representer l'entier naturel 1

sucsuc : naturel -> naturel
-- pour representer le successeur du successeur d'un entier naturel

est_zero : naturel -> bool
-- pour tester la nullite d'un entier naturel

est_un : naturel -> bool
-- pour tester l'egalite d'un entier naturel a 1

prepre : naturel -> naturel
-- ne s'applique qu'a un entier naturel >= 2
-- pour calculer le predecesseur du predecesseur d'un entier naturel >= 2

affiche_naturel : Format.formatter -> naturel -> unit
-- apres evaluation de la directive suivante :
-- #install_printer affiche_naturel
-- affiche une representation externe des entiers naturels

*)

type naturel
val zero : unit -> naturel
val un : unit -> naturel
val sucsuc : naturel -> naturel
val est_zero : naturel -> bool
val est_un : naturel -> bool
val prepre : naturel -> naturel
val affiche_naturel : Format.formatter -> naturel -> unit
