(* ---------------------------------------------------------------------- *)
(* DERIVATION DE FONCTIONS DE R DANS R ---------------------------------- *)
(* ---------------------------------------------------------------------- *)

(* ---------------------------------------------------------------------- *)
(* ---------------------------------------------------------------------- *)

(* ---------------------- *)
(* DERIVATION "NUMERIQUE" *)
(* ---------------------- *)

(* ---------------- *)
(* derivee premiere *)
(* ---------------- *)

(* derivee_approx : (float -> float) * float -> (float -> float) *)

let derivee_approx = function
  (f , h) -> if h = 0.
               then
                 let
                   ch = "Impossible de calculer un taux d'accroissement "
                        ^ "car le pas est nul"
                 in
                   raise (Failure (ch))
               else function x -> (f (x +. h) -. f (x -. h)) /. (2. *. h)

(* ---------------------------------------------------------------------- *)
(* ---------------------------------------------------------------------- *)

(* ------------------- *)
(* DERIVATION FORMELLE *)
(* ------------------- *)

(* --------------------------- *)
(* pour affichage au top-level *)
(* --------------------------- *)

(* affiche_fonction_de_R_dans_R : Format.formatter
                                  -> fonction_de_R_dans_R -> unit *)

let affiche_fonction_de_R_dans_R form f =
  Format.pp_open_box form 0 ;
  (let
     f1 = simplifie_un_peu (f)
   in
     Format.pp_print_string form (string_of_fonction_de_R_dans_R f1)) ;
  Format.pp_close_box form ()

(* ---------- *)

(* #install_printer affiche_fonction_de_R_dans_R *)

(* ---------------------------------------------------------------------- *)
(* ---------------------------------------------------------------------- *)

