(*fichier lexeur.mll *)
{
    open Parseur
    exception Eof
    exception TokenInconu
}
rule token = parse
    [' ' '\t' '\r' '\n'] | "//"[^ '\n']*
        { token lexbuf }
|   ['0'-'9']+ ('.' ['0'-'9']*)? (['e'] ['+' '-']? ['0'-'9']+)? as lexem 
        {NUMBER (float_of_string lexem) }
| "NaN"
        {NUMBER(float_of_string "NaN")}
| '+'
        { PLUS }
| '-'  
        { MINUS }
| '*'
        { TIMES }
| '/'
        { OVER }
| '('
        { GPAREN }
| ')'
        { DPAREN }
| ';'
        {SEMICOLON}
| '!'
        {BANG}
| "<"
        {LESS}
| "<="
        {LESS_EQ}
| '>'
        {GREATER}
| '>'
        {GREATER_EQ}
| "==" 
        {D_EQUAL}
| "=" 
        {S_EQUAL}
| "if"
        {IF}
| "else"
        {ELSE}
| '{'
        { L_BRACKET }
| '}'
        { R_BRACKET }
| "While"
        { WHILE }
| "true" | "false" as lexem 
        {BOOLEAN(bool_of_string(lexem))}

| ['a'-'z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lexem
        { VARIABLE(lexem) }
        
| "import"* as lexem
        {FILE(lexem)}
        
| eof
        { raise Eof }
| _
        { raise TokenInconu }

(* On mets des double Guillemets pour True et False car se sont des chaines de caractères. On mets des guillemets simple pour les caractères simples *)