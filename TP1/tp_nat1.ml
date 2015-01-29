(*
* Fonctions implémentant le type naturel 1
* @author François Hallereau
* @date 22 janvier 2015
* Licence 3 Informatique
* Université de Nantes
*)

#load "nat_1.cmo";;
open Nat_1;;


let rec est_pair(a)=
	if est_zero(a) then
		true
	else
		est_impair(pre(a));;

let rec est_impair(a)=
	if est_zero(a) then
		false
	else
		est_pair(pre(a));;
	
;;

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
supegal : naturel*naturel -> bool
opéarteur de comparaison, retourne vrai si a>=b faux sinon
*)	
let rec supegal(a,b) =
	if est_zero(a) && est_zero(b) then
		true
	else if est_zero(b) then 
		true
	else if est_zero(a) then
		false
	else
		supegal(pre(a),pre(b));;
		
(*
supegal : naturel*naturel -> bool
opéarteur de comparaison, retourne vrai si a>=b faux sinon
*)	
let rec sup(a,b) =
	if est_zero(a) then
		false
	else if est_zero(b) then 
		true 
	else
		sup(pre(a),pre(b));;
		
(*
moins : naturel*naturel -> naturel
opérateur de soustraction entre deux naturels
*)
let rec moins(a,b) =
	if sup(b,a) then
		moins(b,a)
	else if est_zero(b) then
		a
	else
		moins(pre(a),pre(b));;
		

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
	
(*Test des fonctions de conversions*)	
int_of_nat(nat_of_int(int_of_nat(zero())));;

(*Test de la multiplication*)
int_of_nat(fois(suc(suc(zero())),suc(suc(zero()))));;

(*Test de la soustraction*)
int_of_nat(moins(nat_of_int(4),nat_of_int(2)));;
int_of_nat(moins(nat_of_int(2),nat_of_int(2)));;
int_of_nat(moins(nat_of_int(2),nat_of_int(4)));;


supegal(nat_of_int(4),nat_of_int(2));;
supegal(nat_of_int(2),nat_of_int(2));;
supegal(nat_of_int(2),nat_of_int(4));;

