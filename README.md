Saidi Rayane 12100073

/************************** Rapport du projet de Compilation **************************/

- D'abord la compilation ne se fait pas de la même façon suivant les fragments : 

* Dans la plupart des fragments; il suffit de faire : ./MakeFile/Dune/run.sh  PUIS ./main test

* Dans les autres, faire :

ocamllex lexeur.mll 

ocamlyacc parseur.mly 

ocamlc -c  AST.ml parseur.mli lexeur.ml parseur.ml main.ml 

ocamlc -o main AST.cmo lexeur.cmo parseur.cmo main.cmo

- Le fichier test contient les test pour chaque fragments
