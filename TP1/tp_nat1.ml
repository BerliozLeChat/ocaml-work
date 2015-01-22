(*
* Fonctions implémentant le type naturel 1
* @author François Hallereau
* @date 22 janvier 2015
* Licence 3 Informatique
* Université de Nantes
*)
#load "nat_1.cmo";;
open Nat_1;;

(*
int_of_nat : naturel -> int
Convertit un naturel en int
*)
let rec int_of_nat(x) =
	if est_zero(x) then
	0
	else
	1+int_of_nat(pre(x));;
	
	
int_of_nat(suc(suc(zero())));;

