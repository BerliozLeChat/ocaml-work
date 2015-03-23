(* ---------------------------------------------------------------------- *)
(* ---------------------------------------------------------------------- *)

(* #load "str.cma" ;; *)

(* ---------------------------------------------------------------------- *)
(* ---------------------------------------------------------------------- *)

(* #use "derivation.ml" ;; *)

(* ---------------------------------------------------------------------- *)
(* ---------------------------------------------------------------------- *)

let pi_approx = acos (-1.) ;;

let p6 , p4 , p3 , p2
=
pi_approx /. 6. , pi_approx /. 4. , pi_approx /. 3. , pi_approx /. 2. ;;

(* ---------------------------------------------------------------------- *)
(* ------------------------- exemple tres simple ------------------------ *)
(* ---------------------------------------------------------------------- *)

(* opposee d'une fonction *)

(* opposee : fonction_de_R_dans_R -> fonction_de_R_dans_R *)


let opposee = function f -> Produit (Constante (-1.) , f)

(* ---------------------------------------------------------------------- *)
(* ------------------------- derivees premieres ------------------------- *)
(* ---------------------------------------------------------------------- *)

(* calcul numerique *)

let fun_1 = function x -> sqrt (x ** 2. +. 7.) ;;

let fun_1' = derivee_approx (fun_1 , 1e-7) ;;



(* calcul "a la main" *)

let f1' = function x -> x /. sqrt (x ** 2. +. 7.) ;;



(* calcul formel *)

let racine_carree = Composee (Exponentielle ,
                              Produit (Constante (0.5) ,
                                       Logarithme_neperien)) ;;

let fon_1 = Composee (racine_carree,
                      Somme (Produit (Identite , Identite) ,
                             Constante (7.))) ;;

let fon_1' = derivee_de_fonction_de_R_dans_R (fon_1) ;;

let fun_fon_1' = function_of_fonction_de_R_dans_R (fon_1') ;;



(* comparaison : numerique - "a la main" - formel *)

(fun_1' (5.) , f1' (5.) , fun_fon_1' (5.)) ;;

(* ---------------------------------------------------------------------- *)
(* ------------------------- derivees d'ordre 4 ------------------------- *)
(* ---------------------------------------------------------------------- *)

(* calcul numerique *)

let fun_2 = cos ;;

let fun_2_4' = derivee_nieme_approx (4 , fun_2 , 1e-7) ;;



(* calcul "a la main" *)

let f2_4' = cos ;;



(* calcul formel *)

let fon_2 = Cosinus ;;

let fon_2_4' = derivee_nieme_de_fonction_de_R_dans_R (4 , fon_2) ;;

let fun_fon_2_4' = function_of_fonction_de_R_dans_R (fon_2_4') ;;



(* comparaison : numerique - "a la main" - formel *)
    
("zero : " , fun_2_4' (0.) , f2_4' (0.) , fun_fon_2_4' (0.)) ;;

("pi sur 6 : " , fun_2_4' (p6) , f2_4' (p6) , fun_fon_2_4' (p6)) ;;

("pi sur 4 : " , fun_2_4' (p4) , f2_4' (p4) , fun_fon_2_4' (p4)) ;;

("pi sur 3 : " , fun_2_4' (p3) , f2_4' (p3) , fun_fon_2_4' (p3)) ;;

("pi sur 2 : " , fun_2_4' (p2) , f2_4' (p2) , fun_fon_2_4' (p2)) ;;

(* ---------------------------------------------------------------------- *)
(* ------------------------- mini-simplification ------------------------ *)
(* ---------------------------------------------------------------------- *)

let f = Cosinus ;;

let f_4' = derivee_nieme_de_fonction_de_R_dans_R (4 , f) ;;

let f_4'_simpl = simplifie_un_peu (f_4') ;;



string_of_fonction_de_R_dans_R (f_4') ;;



string_of_fonction_de_R_dans_R (f_4'_simpl) ;;

(* ---------------------------------------------------------------------- *)
(* ---------------------------------------------------------------------- *)

