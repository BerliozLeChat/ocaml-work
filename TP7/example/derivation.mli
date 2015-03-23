(* ---------------------------------------------------------------------- *)
(* DERIVATION DE FONCTIONS DE R DANS R ---------------------------------- *)
(* ---------------------------------------------------------------------- *)

val derivee_approx : (float -> float) * float -> float -> float

val derivee_nieme_approx : int * (float -> float) * float -> float -> float

(* ----- *)

type fonction_de_R_dans_R =
    Constante of float
  | Identite
  | Somme of fonction_de_R_dans_R * fonction_de_R_dans_R
  | Produit of fonction_de_R_dans_R * fonction_de_R_dans_R
  | Quotient of fonction_de_R_dans_R * fonction_de_R_dans_R
  | Logarithme_neperien
  | Exponentielle
  | Sinus
  | Cosinus
  | Arc_sinus
  | Arc_cosinus
  | Composee of fonction_de_R_dans_R * fonction_de_R_dans_R

val opposee : fonction_de_R_dans_R -> fonction_de_R_dans_R

val derivee_de_fonction_de_R_dans_R :
  fonction_de_R_dans_R -> fonction_de_R_dans_R

val derivee_nieme_de_fonction_de_R_dans_R :
  int * fonction_de_R_dans_R -> fonction_de_R_dans_R

val function_of_fonction_de_R_dans_R : fonction_de_R_dans_R
                                       -> float -> float

val simplifie_un_peu : fonction_de_R_dans_R -> fonction_de_R_dans_R

val string_of_fonction_de_R_dans_R : fonction_de_R_dans_R -> string

(* - *)

val affiche_fonction_de_R_dans_R : Format.formatter
                                   -> fonction_de_R_dans_R -> unit

(* ---------------------------------------------------------------------- *)
(* ---------------------------------------------------------------------- *)
