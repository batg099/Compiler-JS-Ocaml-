%{

  let float_of_bool b =
    if b then 1.0 else 0.0
  let bool_of_float b =
        b <> 0.0
  let env=Hashtbl.create 10
%}

  
%type <float>  expression commande main
%token <float> NUMBER
%token <bool> BOOLEAN
%type <string> VARIABLE
%type <string> FILE

%token NUMBER PLUS MINUS TIMES GPAREN DPAREN EOL SEMICOLON OVER S_EQUAL D_EQUAL BANG LESS LESS_EQ BOOLEAN GREATER GREATER_EQ NaN AND OR VARIABLE FILE IF ELSE L_BRACKET R_BRACKET WHILE


%left D_EQUAL
%left GPAREN DPAREN
%left PLUS MINUS
%left TIMES OVER

%nonassoc UMINUS


%start main
%%
main:
    commande 
        { Printf.printf "Le resultat final est %F!\n" $1;$1 }
;

commande:
     expression SEMICOLON 
        { $1}
    | commande 
        {$1}


expression:
  | expression PLUS expression 
    { $1 +. $3; }
  | expression MINUS expression
    { $1 -. $3 }
  | expression TIMES expression
    { $1 *. $3 }
  | expression OVER expression
    { $1 /. $3 }
  | GPAREN expression DPAREN
    { $2 }
  | MINUS expression %prec UMINUS
    { -.$2 }
  | NUMBER
    { print_endline ("Mon nombre est : "^(string_of_float $1));$1 }
  | BOOLEAN
        { print_endline (string_of_bool $1);  float_of_bool $1  }
  | BANG expression
    { if $2 <> 0.0 then 0.0 else 1.0}
  | expression LESS expression
    { float_of_bool ($1 < $3) }
  | expression LESS expression
    { float_of_bool ($1 > $3) }
  | expression D_EQUAL expression
    { float_of_bool ($1 == $3) }
  | expression AND expression
    { float_of_bool (bool_of_float($1) && bool_of_float($3)) }
  | expression OR expression
    { float_of_bool ((bool_of_float($1) || (bool_of_float($3)))) }
  | VARIABLE S_EQUAL expression
    { Hashtbl.add env $1 $3;$3}
  | VARIABLE 
    { Hashtbl.find env $1 } 

  | NaN
    { nan }
  | IF GPAREN expression DPAREN L_BRACKET commande R_BRACKET  ELSE  L_BRACKET commande R_BRACKET
    {  if bool_of_float $3 then $6 else $10 }


 



