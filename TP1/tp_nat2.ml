(*
* Fonctions implémentant le type naturel 1
* @author François Hallereau
* @date 29 janvier 2015
* Licence 3 Informatique
* Université de Nantes
*)

#load "nat_2.cmo";;
open Nat_2;;

(*
nat_of_int :  int -> naturel
Convertit un int en naturel
*)
let rec nat_of_int(x) =
	if x=0 then
		zero()
	else if x=1 then
		un()
	else
		sucsuc(nat_of_int(x-2));;

(*
int_of_nat : naturel -> int
Convertit un naturel en int
*)
let rec int_of_nat(x) =
	if est_zero(x) then
		0
	else if est_un(x) then
		1
	else
		2+int_of_nat(prepre(x));;

int_of_nat(nat_of_int(int_of_nat(zero())));;
int_of_nat(nat_of_int(5));;
