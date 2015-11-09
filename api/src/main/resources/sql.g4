grammar sql;

@header {
package org.brianlab.sql.dsl.antlr.grammer;
}
//main skeleton
sql: 'select' PROJECTION 'from' TABLES 'where' WHERE_CRITERIA 'groupby' GROUPBY_CRITERIA 'order'



Identifier
    :	[a-zA-Z_][a-zA-Z0-9_]*
	;


fragment NEWLINE : '\r' '\n' | '\n' | '\r';

fragment ANYSTRING :  ~[##] * ;

fragment ESCAPED_QUOTE : '\\"';
QUOTED_STRING :   '"' ( ESCAPED_QUOTE | ~('\n'|'\r') )*? '"';

fragment DIGIT
  :  '0'..'9'
  ;

WS	:	[ \t\r\n\u000C]+ -> skip;

COMMENT
    :   '##'  ~[\r\n\t]* -> skip
    ;