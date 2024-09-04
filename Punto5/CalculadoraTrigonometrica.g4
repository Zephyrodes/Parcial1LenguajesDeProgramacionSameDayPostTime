grammar CalculadoraTrigonometrica;

// Lexer rules
SIN: 'Sin';
COS: 'Cos';
TAN: 'Tan';
LPAREN: '(';
RPAREN: ')';
NUMBER: [0-9]+ ('.' [0-9]+)?;
WS: [ \t\r\n]+ -> skip;

// Parser rules
file: expr+;
expr: func LPAREN NUMBER RPAREN;

func: SIN | COS | TAN;
