(*
Université de Nantes
Licence 3 informatique
Hallereau François
*)


(* type expression : n ou e + e' ou n + (e/e') *)
type expr = C of int | Plus of expr * expr | PlusDiv of int * expr * expr ;;

(* Exemples :
1317 = C(1317) -> 4 col & 1 ligne
13 + 5 = Plus(C(13),C(5)) -> 6 cols & 1 ligne
1 + (13/7) = PlusDiv(1, C(13), C(7)) -> 6 cols & 3 lignes
5 + (3/4) + 4 = Plus(PlusDiv(5, C(3), C(4)), C(4)) -> 9 cols & 3 lignes
1 + (6/(1+(8/5))) + 2 + ((5 + (9/5))/1317) ; 21 cols & 7 lignes
*)

let e1 = C(1317) ;;
let e2 = Plus(C(13),C(5)) ;;
let e3 = PlusDiv(1, C(13), C(7)) ;;
let e4 = Plus(PlusDiv(5, C(3), C(4)), C(4)) ;;
let e5 = Plus( PlusDiv( 1, C(6), PlusDiv( 1, C(8), C(5) ) ), PlusDiv( 2, PlusDiv( 5, C(9), C(2)), C(1317) ) );;


let rec nb_chiffre x =
	if x < 10 then
		1
	else
		1+nb_chiffre(x/10);;
		
(* Calcul du nombre de colonnes *)

let rec nb_colonnes expr = match expr with
	C(e) -> nb_chiffre(e)
	|Plus(e1,e2) -> nb_colonnes(e1)+nb_colonnes(e2)+3
	|PlusDiv(e1,e2,e3) -> nb_chiffre(e1)+3+ ( max (nb_colonnes(e2)) (nb_colonnes(e3)) ) ;;
	

let rec nb_ligne_faux expr = match expr with
	C(e) -> 1
	|Plus(e1,e2) -> max (nb_ligne_faux e1) (nb_ligne_faux e2)
	PlusDiv(n,e1,e2)->1 + nb_ligne_faux e1 + nb_ligne_faux e2;;

	
nb_colonnes(e1);;
nb_colonnes(e2);;
nb_colonnes(e3);;
nb_colonnes(e4);;
nb_colonnes(e5);;

nb_lignes(e1);;
nb_lignes(e2);;
nb_lignes(e3);;
nb_lignes(e4);;
nb_lignes(e5);;
