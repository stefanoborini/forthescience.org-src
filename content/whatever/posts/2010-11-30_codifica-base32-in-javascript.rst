Codifica base32 in javascript
#############################
:date: 2010-11-30 17:47
:author: Stefano
:category: JavaScript @it
:slug: codifica-base32-in-javascript

Ho avuto la necessità di fare base32 encoding in javascript, e non ho
trovato niente di disponibile in rete, quindi ho scritto il codice da
solo

[javascript]
 var baseenc = baseenc \|\| {};

baseenc.b32encode = function(s) {
 /\* encodes a string s to base32 and returns the encoded string \*/
 var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";

var parts = [];
 var quanta= Math.floor((s.length / 5));
 var leftover = s.length % 5;

if (leftover != 0) {
 for (var i = 0; i < (5-leftover); i++) { s += '\\x00'; }
 quanta += 1;
 }

for (i = 0; i < quanta; i++) {
 parts.push(alphabet.charAt(s.charCodeAt(i\*5) >> 3));
 parts.push(alphabet.charAt( ((s.charCodeAt(i\*5) & 0x07) << 2)
 \| (s.charCodeAt(i\*5+1) >> 6)));
 parts.push(alphabet.charAt( ((s.charCodeAt(i\*5+1) & 0x3F) >> 1) ));
 parts.push(alphabet.charAt( ((s.charCodeAt(i\*5+1) & 0x01) << 4)
 \| (s.charCodeAt(i\*5+2) >> 4)));
 parts.push(alphabet.charAt( ((s.charCodeAt(i\*5+2) & 0x0F) << 1)
 \| (s.charCodeAt(i\*5+3) >> 7)));
 parts.push(alphabet.charAt( ((s.charCodeAt(i\*5+3) & 0x7F) >> 2)));
 parts.push(alphabet.charAt( ((s.charCodeAt(i\*5+3) & 0x03) << 3)
 \| (s.charCodeAt(i\*5+4) >> 5)));
 parts.push(alphabet.charAt( ((s.charCodeAt(i\*5+4) & 0x1F) )));
 }

var replace = 0;
 if (leftover == 1) replace = 6;
 else if (leftover == 2) replace = 4;
 else if (leftover == 3) replace = 3;
 else if (leftover == 4) replace = 1;

for (i = 0; i < replace; i++) parts.pop();
 for (i = 0; i < replace; i++) parts.push("=");

return parts.join("");
 }
 [/javascript]

Rilascio questo codice sotto la molto appropriata `WTFPL
license <http://sam.zoy.org/wtfpl/>`_. Lascio la decodifica come si dice
spesso, come esercizio per il lettore. Seriamente, non necessitavo di
decode, quindi non ci ho investito tempo. Spiacente, forse in un altro
post.
