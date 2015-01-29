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
plus : naturel*naturel -> naturel
opérateur d'addition entre deux naturels
*)
let rec plus(a,b) =
	if est_zero(b) && est_zero(a) then
		zero()
	else if est_un(b) && est_un(a) then
		sucsuc(zero())
	else if est_un(b) && est_zero(a) then
		un()
	else if est_un(a) && est_zero(b) then
		un()
	else if est_un(a) || est_zero(a) then
		sucsuc(plus(a,prepre(b)))
	else if est_un(b) || est_zero(b) then
		sucsuc(plus(prepre(a),b))
	else
		sucsuc(sucsuc(plus(prepre(a),prepre(b))));;

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

int_of_nat(plus(nat_of_int(4),nat_of_int(2)));;
int_of_nat(plus(nat_of_int(2),nat_of_int(2)));;
int_of_nat(plus(nat_of_int(2),nat_of_int(4)));;
int_of_nat(plus(nat_of_int(3),nat_of_int(5)));;
