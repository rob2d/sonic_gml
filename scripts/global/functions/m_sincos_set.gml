#define m_sincos_set
var global.sinGet[360] = 0; 
var global.cosGet[360] = 0;
var i;

for (i=0; i<360; i+=1)
{ 
    global.sinGet[i] = sin(degtorad(i))
    global.cosGet[i] = cos(degtorad(i))
    }
