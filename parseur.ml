type token =
  | NUMBER of (float)
  | BOOLEAN of (bool)
  | PLUS
  | MINUS
  | TIMES
  | GPAREN
  | DPAREN
  | EOL
  | SEMICOLON
  | OVER
  | D_EQUAL
  | BANG
  | LESS
  | GREATER
  | NaN

open Parsing;;
let _ = parse_error;;
# 2 "parseur.mly"

  let float_of_bool b =
    if b then 1.0 else 0.0

# 26 "parseur.ml"
let yytransl_const = [|
  259 (* PLUS *);
  260 (* MINUS *);
  261 (* TIMES *);
  262 (* GPAREN *);
  263 (* DPAREN *);
  264 (* EOL *);
  265 (* SEMICOLON *);
  266 (* OVER *);
  267 (* D_EQUAL *);
  268 (* BANG *);
  269 (* LESS *);
  270 (* GREATER *);
  271 (* NaN *);
    0|]

let yytransl_block = [|
  257 (* NUMBER *);
  258 (* BOOLEAN *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\000\000"

let yylen = "\002\000\
\001\000\002\000\003\000\003\000\003\000\003\000\001\000\003\000\
\002\000\001\000\001\000\002\000\003\000\003\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\010\000\011\000\000\000\000\000\000\000\007\000\
\016\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\002\000\000\000\000\000\000\000\008\000\000\000\000\000\
\000\000\000\000\000\000\000\000"

let yydgoto = "\002\000\
\009\000\010\000\011\000"

let yysindex = "\007\000\
\016\255\000\000\000\000\000\000\016\255\016\255\016\255\000\000\
\000\000\000\000\029\255\000\255\040\255\051\255\016\255\016\255\
\016\255\000\000\016\255\016\255\016\255\000\000\014\255\014\255\
\000\255\000\255\055\255\051\255"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\066\255\000\000\253\254\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\093\255\102\255\
\075\255\084\255\252\254\028\255"

let yygindex = "\000\000\
\000\000\000\000\251\255"

let yytablesize = 113
let yytable = "\012\000\
\013\000\014\000\015\000\012\000\015\000\012\000\015\000\001\000\
\000\000\023\000\024\000\025\000\021\000\026\000\027\000\028\000\
\003\000\004\000\017\000\005\000\000\000\006\000\000\000\019\000\
\000\000\000\000\021\000\007\000\000\000\000\000\008\000\015\000\
\016\000\017\000\013\000\000\000\013\000\018\000\019\000\020\000\
\000\000\021\000\015\000\016\000\017\000\000\000\022\000\000\000\
\000\000\019\000\020\000\000\000\021\000\015\000\016\000\017\000\
\000\000\015\000\016\000\017\000\019\000\020\000\000\000\021\000\
\019\000\000\000\000\000\021\000\009\000\009\000\009\000\000\000\
\009\000\000\000\009\000\009\000\009\000\005\000\005\000\005\000\
\000\000\005\000\000\000\005\000\005\000\005\000\006\000\006\000\
\006\000\000\000\006\000\000\000\006\000\006\000\006\000\003\000\
\003\000\000\000\000\000\003\000\000\000\003\000\000\000\003\000\
\004\000\004\000\000\000\000\000\004\000\000\000\004\000\000\000\
\004\000"

let yycheck = "\005\000\
\006\000\007\000\007\001\007\001\009\001\009\001\011\001\001\000\
\255\255\015\000\016\000\017\000\013\001\019\000\020\000\021\000\
\001\001\002\001\005\001\004\001\255\255\006\001\255\255\010\001\
\255\255\255\255\013\001\012\001\255\255\255\255\015\001\003\001\
\004\001\005\001\007\001\255\255\009\001\009\001\010\001\011\001\
\255\255\013\001\003\001\004\001\005\001\255\255\007\001\255\255\
\255\255\010\001\011\001\255\255\013\001\003\001\004\001\005\001\
\255\255\003\001\004\001\005\001\010\001\011\001\255\255\013\001\
\010\001\255\255\255\255\013\001\003\001\004\001\005\001\255\255\
\007\001\255\255\009\001\010\001\011\001\003\001\004\001\005\001\
\255\255\007\001\255\255\009\001\010\001\011\001\003\001\004\001\
\005\001\255\255\007\001\255\255\009\001\010\001\011\001\003\001\
\004\001\255\255\255\255\007\001\255\255\009\001\255\255\011\001\
\003\001\004\001\255\255\255\255\007\001\255\255\009\001\255\255\
\011\001"

let yynames_const = "\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  GPAREN\000\
  DPAREN\000\
  EOL\000\
  SEMICOLON\000\
  OVER\000\
  D_EQUAL\000\
  BANG\000\
  LESS\000\
  GREATER\000\
  NaN\000\
  "

let yynames_block = "\
  NUMBER\000\
  BOOLEAN\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : unit) in
    Obj.repr(
# 29 "parseur.mly"
        (_1)
# 143 "parseur.ml"
               : unit))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : float) in
    Obj.repr(
# 34 "parseur.mly"
        (print_endline "expr : Mon resultat final est : ";print_endline (string_of_float _1);)
# 150 "parseur.ml"
               : unit))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : float) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 39 "parseur.mly"
    ( _1 +. _3; )
# 158 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : float) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 41 "parseur.mly"
    ( _1 -. _3 )
# 166 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : float) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 43 "parseur.mly"
    ( _1 *. _3 )
# 174 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : float) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 45 "parseur.mly"
    ( _1 /. _3 )
# 182 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    Obj.repr(
# 47 "parseur.mly"
   ( nan)
# 188 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : float) in
    Obj.repr(
# 49 "parseur.mly"
    ( _2 )
# 195 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 51 "parseur.mly"
    ( -._2 )
# 202 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 53 "parseur.mly"
    ( print_endline ("Mon nombre est : "^(string_of_float _1));_1 )
# 209 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 55 "parseur.mly"
        ( print_endline (string_of_bool _1);  float_of_bool _1  )
# 216 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 57 "parseur.mly"
    ( if _2 <> 0.0 then 0.0 else 1.0)
# 223 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : float) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 59 "parseur.mly"
    ( float_of_bool (_1 < _3) )
# 231 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : float) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 61 "parseur.mly"
    ( float_of_bool (_1 > _3) )
# 239 "parseur.ml"
               : float))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : float) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 63 "parseur.mly"
    ( float_of_bool (_1 == _3) )
# 247 "parseur.ml"
               : float))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : unit)
