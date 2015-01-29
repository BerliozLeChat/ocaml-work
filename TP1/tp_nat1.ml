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
plus : naturel*naturel -> naturel
opérateur d'addition entre deux naturels
*)
let rec plus(a,b) =
	if est_zero(b) then
	a
	else
	plus(suc(a),pre(b));;

(*
fois : naturel*naturel -> naturel
opérateur de multiplication entre deux naturels
*)	
let rec fois(a,b) =
	if est_zero(b) then
		zero()
	else
	plus(a,fois(a,pre(b)));;
	

(*
nat_of_int :  int -> naturel
Convertit un int en naturel
*)
let rec nat_of_int(x) =
	if x=0 then
	zero()
	else
	suc(nat_of_int(x-1));;

(*
int_of_nat : naturel -> int
Convertit un naturel en int
*)
let rec int_of_nat(x) =
	if est_zero(x) then
	0
	else
	1+int_of_nat(pre(x));;
	
	
int_of_nat(nat_of_int(int_of_nat(zero())));;
int_of_nat(fois(suc(suc(zero())),suc(suc(zero()))));;

