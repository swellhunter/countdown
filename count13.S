.include "tn13def.inc"
       ldi     r16,0x0f  ;set pb0-pb3 as output
       out     ddrb,r16
loop:
       out     portb,r16 ;set whole of port B to r16
       subi    r16,1     ;decrement R16
       rjmp    loop      ;and write that, ad infinitum
