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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> unit
