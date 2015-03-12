open List;;




(* Tests avec la fonction fold_left *)
fold_left (+)  3 [1;2;3;4;5];;
fold_left ( * )  3 [1;2;3;4;5];;

let rec plie_gauche f a lx =
	if lx = []
		then a
		else plie_gauche f (f a (hd(lx))) (tl(lx)) ;;
	
(* Tests avec plie_gauche *)
plie_gauche (+)  3 [1;2;3;4;5];;
plie_gauche ( * )  3 [1;2;3;4;5];;

(* Tests avec la fonction fold_right *)
fold_right (+) [1;2;3;4;5] 3 ;;
fold_right ( * ) [1;2;3;4;5] 3 ;;

let rec plie_droite f lx a =
if lx = []
then a
else plie_droite f (tl(lx)) (f (hd(lx)) a);;

(* Tests avec plie_droite *)
plie_droite (+) [1;2;3;4;5] 3 ;;



