program MetroCaracas;
uses crt;

var 
nombre:string;
apellido:string;
cedula:string;
c:string;
boletos:integer;
paquete:char;
t:integer;
v:integer;
linea:integer;
salida,llegada:string;
factura:integer;
pago:integer;
monto, confirmacion:integer;
l: integer;
 z: char;
 p: integer;
 b: integer;
utilizar, resta: integer;
validacion:string;
contra, clave:string;

BEGIN

writeln ('Bienvenido a la compra de boletos del metro de Caracas');
writeln ('            Si quiere comprar boletos escriba "si"              ');
writeln ('     En caso de que no quiera comprar boletos escriba "no"     ');
readln (c);

while (c<>'si') and (c<>'no') do
begin
clrscr;
writeln ('Respuesta incorrecta, por favor escriba "si" o "no"');
readln (c);
end;

case (c) of

'si':begin 

clrscr;
writeln ('Ingrese numero de cedula');
readln (cedula);
clrscr;
writeln ('Ingrese nombre');
readln (nombre);
clrscr;
writeln ('Ingrese apellido');
readln (apellido);
clrscr;
writeln ('Ingrese una cantidad de boletos que desea comprar(maximo 30 boletos)');

readln (boletos);

  
while (boletos=0) or (boletos>30) do
begin
clrscr;
writeln ('Cantidad no valida, por favor ingrese una cantidad de boletos valida(maximo 30 boletos)');
readln (boletos);
end;

clrscr;
textcolor(Yellow);
writeln ('|Boleto:                 |Color:  |Cobertura:              |Precio:|');
writeln ('|a|Simple                |Amarillo|1 viaje en metro        |5 Bs   |');
writeln ('|b|Integrado             |Amarillo|1 viaje en metro        |5 Bs   |');
writeln ('| |                      |        |1 viaje en metrobus     |8 Bs   |');
writeln ('|c|Ida y Vuelta          |Amarillo|2 viajes en metro       |10 Bs  |');
writeln ('|d|Ida y Vuelta Integrado|Amarillo|2 viajes en metro       |10 Bs  |');
writeln ('| |                      |        |2 viajes en metrobus    |16 Bs  |');
textcolor(12);
writeln ('|e|Multiabono            |Naranja |10 viajes en metro      |50 Bs  |');
writeln ('|f|Multiabono Integrado  |Naranja |10 viajes en metro      |50 Bs  |');
writeln ('| |                      |        |10 viajes en metrobus   |80 Bs  |');
textcolor(1);
writeln ('|g|Estudiantil Simple    |Azul    |10 viajes en metro      |45 Bs  |');
writeln ('|h|Estudiantil Integrado |Azul    |10 viajes en metro      |45 Bs  |');
writeln ('| |                      |        |10 viajes en metrobus   |70 Bs  |');
textcolor(4);
writeln ('|i|MetroTarjeta          |Rojo    |20 viajes en metro      |100 Bs |');
writeln ('| |                      |        |30 viajes en metro      |150 Bs |');
writeln ('| |                      |        |40 viajes en metro      |200 Bs |');
writeln ('|j|MetroTarjeta Integrada|Rojo    |20 viajes metro/metrobus|130 Bs |');
writeln ('| |                      |        |30 viajes metro/metrobus|195 Bs |');
writeln ('| |                      |        |40 viajes metro/metrobus|260 Bs |');
textcolor(15);

readln (paquete);

while (paquete<>'a') and (paquete<>'b') and (paquete<>'c') and (paquete<>'d') and (paquete<>'e') and (paquete<>'f') and (paquete<>'g') and (paquete<>'h') and (paquete<>'i') and (paquete<>'j') do
begin
writeln ('Respuesta incorrecta, por favor escriba uno de los caracteres mostrados');
readln (paquete);
end;

clrscr;
	case (paquete) of
	
	'a':Begin
	     Writeln ('Boleto Simple: Precio 5 Bs');
	     writeln ('El precio de sus boletos es:');
	     monto:=boletos*5;
	     writeln (monto);
	    End;
	'b':Begin
	     writeln ('Seleccione el tipo de transporte');
	     writeln ('1: Metro');
	     writeln ('2: Metrobus');
	     readln (t);
	     clrscr;
	     while (t=0) or (t>2) do
         begin
         writeln ('Opcion incorrecta, por favor, escriba una opcion valida');
         readln (t);
         clrscr;
         end;
	     
	    case (t) of
	   
	    1:Begin 
	       writeln ('Boleto de metro: Precio 5 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*5;
	       writeln (monto);
	       end;
	    2:Begin
	       writeln ('Boleto de metrobus: Precio 8 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*8;
	       writeln (monto);
	       end;
	    end;
	    end;
	    
	'c': begin
	     writeln ('Boleto Ida y Vuelta: Precio 10 Bs');
	     writeln ('El precio de sus boletos es');
	     monto:=boletos*10;
	     writeln (monto);
	     end;
	'd': Begin
	     writeln ('Seleccione el tipo de transporte');
	     writeln ('1: Metro');
	     writeln ('2: Metrobus');
	     readln (t);
	     clrscr;
	     while (t=0) or (t>2) do
         begin
         writeln ('Opcion incorrecta, por favor, escriba una opcion valida');
         readln (t);
         clrscr;
         end;
	     
	    case (t) of
	   
	    1:Begin 
	       writeln ('Boleto de metro de Ida y de Vuelta: Precio 10 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*10;
	       writeln (monto);
	       end;
	    2:Begin
	       writeln ('Boleto de metrobus Ida y Vuelta: Precio 16 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*16;
	       writeln (monto);
	       end;
	    end;
	    end;
	'e': begin
	    writeln ('Boleto Multiabono: Precio 50 Bs');
	    writeln ('El precio de sus boletos es:');
	    monto:=boletos*50;
	    writeln (monto);
	    end;
	'f': Begin
	     writeln ('Seleccione el tipo de transporte');
	     writeln ('1: Metro');
	     writeln ('2: Metrobus');
	     readln (t);
	     clrscr;
	     while (t=0) or (t>2) do
         begin
         writeln ('Opcion incorrecta, por favor, escriba una opcion valida');
         readln (t);
         clrscr;
         end;
	    
	    case (t) of
	   
	    1:Begin 
	       writeln ('Boleto Multiabono(metro): Precio 50 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*50;
	       writeln (monto);
	       end;
	    2:Begin
	       writeln ('Boleto Multiabono(metrobus): Precio 80 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*80;
	       writeln (monto);
	       end;
	    end;
	    end;
	    
	'g':begin
	     writeln ('Boleto Estudiantil Simple: Precio 45 Bs');
	     writeln ('El precio de sus boletos es:');
	     monto:=boletos*45;
	     writeln (monto);
	    end;
	'h': Begin
	     writeln ('Seleccione el tipo de transporte');
	     writeln ('1: Metro');
	     writeln ('2: Metrobus');
	     readln (t);
	     clrscr;
	     while (t=0) or (t>2) do
         begin
         writeln ('Opcion incorrecta, por favor, escriba una opcion valida');
         readln (t);
         clrscr;
         end;
	   
	    case (t) of
	   
	    1:Begin 
	       writeln ('Boleto Estudiantil Integrado(metro): Precio 5 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*45;
	       writeln (monto);
	       end;
	    2:Begin
	       writeln ('Boleto Estudiantil Integrado(metrobus): Precio 8 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*70;
	       writeln (monto);
	       end;
	    end;
	    end;
	  'i':Begin
	     clrscr;
	     writeln ('Seleccione la cantidad de boletos');
	     writeln ('1: 20 Boletos');
	     writeln ('2: 30 Boletos');
	     writeln ('3: 40 boletos');
	     readln (v);
	     clrscr;
	     while (v=0) or (v>3) do
         begin
         writeln ('Opcion incorrecta, por favor, escriba una opcion valida');
         readln (v);
         clrscr;
         end;
	     
	    case (v) of
	   
	    1:Begin 
	       writeln ('MetroTarjeta (20 viajes): Precio 100 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*100;
	       writeln (monto);
	       end;
	    2:Begin
	       writeln ('MetroTarjeta (30 viajes): Precio 150 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*150;
	       writeln (monto);
	       end;
	    3:Begin
	       writeln ('MetroTarjeta (40 viajes): Precio 200 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*200;
	       writeln (monto);
	       end;
	    end;
	    end;
	   'j':Begin
	     writeln ('Seleccione el tipo de transporte');
	     writeln ('1: Metro');
	     writeln ('2: Metrobus');
	     readln (t);
	     clrscr;
	     while (t=0) or (t>2) do
         begin
         writeln ('Opcion incorrecta, por favor, escriba una opcion valida');
         readln (t);
         clrscr;
         end;
	     
	    case (t) of
	   
	    1:Begin 
	       writeln ('Seleccione la cantidad de boletos');
	       writeln ('1: 20 Boletos');
	       writeln ('2: 30 Boletos');
	       writeln ('3: 40 boletos');
	       readln (v);
	       clrscr;
	     while (v=0) or (v>3) do
         begin
         writeln ('Opcion incorrecta, por favor, escriba una opcion valida');
         readln (v);
         clrscr;
         end;
	    
	    case (v) of
	   
	    1:Begin 
	       
	       writeln ('MetroTarjeta (metro/20 viajes): Precio 100 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*100;
	       writeln (monto);
	       end;
	    2:Begin
	       writeln ('MetroTarjeta (metro/30 viajes): Precio 150 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*150;
	       writeln (monto);
	       end;
	    3:Begin
	       writeln ('MetroTarjeta (metro/40 viajes): Precio 300 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*300;
	       writeln (monto);
	       end;
	       end;
	       end;
	   
	    2:Begin 
	     writeln ('Seleccione la cantidad de boletos');
	     writeln ('1: 20 Boletos');
	     writeln ('2: 30 Boletos');
	     writeln ('3: 40 boletos');
	     readln (v);
	     while (v=0) or (v>3) do
         begin
         clrscr;
         writeln ('Opcion incorrecta, por favor, escriba una opcion valida');
         readln (v);
         end;
         
	     case (v) of
	   
	    1:Begin 
	       writeln ('MetroTarjeta (metrobus/20 viajes): Precio 130 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*130;
	       writeln (monto);
	       end;
	    2:Begin
	       writeln ('MetroTarjeta (metrobus/30 viajes): Precio 195 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*195;
	       writeln (monto);
	       end;
	    3:Begin
	       writeln ('MetroTarjeta (metrobus/40 viajes): Precio 260 Bs');
	       writeln ('El precio de sus boletos es:');
	       monto:=boletos*260;
	       writeln (monto);
	       end;
	       end;
	       end;
	    end;
	 
	    end;
	 end;
	    
	     clrscr;
	     writeln ('|Seleccione que tipo de linea quiere para sus boletos: |');	     
	     writeln ('|Presione "1" para ver de LINEA 1 a LINEA 4"  |');
	     writeln ('|Presione "2" para ver de LINEA 5 a CLABETREN"|');
	     read (l);
	     
	     clrscr;
	     case (l) of
	    
	     1:begin
	     writeln ('LINEA 1:');
	     writeln ('|-Propatria    |-Capitolio      |-Plaza Venezuela|-Miranda       |');
	     writeln ('|-Perez Bonalde|-La Moyada      |-Sabana Grande  |Los Dos Caminos|');
	     writeln ('|-Plaza Sucre  |-Parque Carabobo|-Chacaito       |-Los Cortejitos|');
	     writeln ('|-Gato Negro   |-Bellas Artes   |-Chacao         |-La California |');
	     writeln ('|-Agua Salud   |-Colegio de Ing |-Altamira       |-Petare        |');
	     writeln ('|-Cabo Amarillo|                                 |-Palo Verde    |');
	     
	     writeln ('LINEA 2:');
	     writeln ('|-El Silencio|-La Paz    |-Mamera                  |');
	     writeln ('|-Capuchinos |-La Yaguara|-Caricuao                |');
	     writeln ('|-Maternidad |-Carapita  |-Zoologico               |');
	     writeln ('|-Artiguas   |-Antimano  |-Ruiz Pineda/Las Adjuntas|');
           
         Writeln ('LINEA 3:');
	     writeln ('|-Plaza Venezuela     |-La Bandera  |-Coche       |');
	     writeln ('|-Ciudad Universitaria|-El Valle    |-Mercado     |');
	     writeln ('|-Los Simbolos        |-Los Jardines|-La Rinconada|');
           
         writeln ('LINEA 4:');
	     writeln ('|-Zona Rental   |-Maternidad|-Antimano                |');
	     writeln ('|-Parque Central|-Artigas   |-Mamera                  |');
	     writeln ('|-Nuevo Circo   |-La Paz    |-Ruiz Pineda/Las Adjuntas|');
	     writeln ('|-Teatros       |-La Yaragua|                         |');
	     writeln ('|-Capuchinos    |-Carapita  |                         |');
         writeln ('Si desea visualizar de LINEA 5 A CLABETREN presione "2"');
         writeln ('Sino presione "1" nuevamente');
         readln (p);
        
         if (p=2) then
         begin
         clrscr;
         writeln ('LINEA 5');
	     writeln ('|-Bello Monte         |-Bello Campo|-Boleita      |');
	     writeln ('|-Las Mercedes        |-Hugo Chavez|-El Marquez   |');
	     writeln ('|-Parque SImon Bolivar|-Montecristo|-Warairarepano|');
          
         writeln ('LINEA 6');
	     writeln ('|-Zoologico|-La Rinconada|');
         
         writeln ('LINEA 7');
	     writeln ('|-Las Flores|-El Cristo        |-Roosevelt    |');
	     writeln ('|-Panteon   |-Roca Tarpeya     |-La Bandera   |');
	     writeln ('|-Socorro   |-Presidente Medina|-Los Ilustres |');
	     writeln ('|-La Moyada |-INCES            |              |');
           
         writeln ('CLABETREN');
	     writeln ('|-Petare 2   |-5 de Julio |-Wararairarepano|');
	     writeln ('|-19 de Abril|-24 de Julio|                |');
         end;
         
         end;
         2:begin  
         writeln ('LINEA 5');
	     writeln ('|-Bello Monte         |-Bello Campo|-Boleita      |');
	     writeln ('|-Las Mercedes        |-Hugo Chavez|-El Marquez   |');
	     writeln ('|-Parque SImon Bolivar|-Montecristo|-Warairarepano|');
          
         writeln ('LINEA 6');
	     writeln ('|-Zoologico|-La Rinconada|');
         
         writeln ('LINEA 7');
	     writeln ('|-Las Flores|-El Cristo        |-Roosevelt    |');
	     writeln ('|-Panteon   |-Roca Tarpeya     |-La Bandera   |');
	     writeln ('|-Socorro   |-Presidente Medina|-Los Ilustres |');
	     writeln ('|-La Moyada |-INCES            |              |');
           
         writeln ('CLABETREN');
	     writeln ('|-Petare 2   |-5 de Julio |-Wararairarepano|');
	     writeln ('|-19 de Abril|-24 de Julio|                |');
         writeln ('Si desea visualizar de "LINEA 1" a "LINEA 4" presione "1"');
         writeln ('Sino presione "2" nuevamente');
         readln (p);
        
         if (p=1) then
         begin
         writeln ('LINEA 1:');
	     writeln ('|-Propatria    |-Capitolio      |-Plaza Venezuela|-Miranda       |');
	     writeln ('|-Perez Bonalde|-La Moyada      |-Sabana Grande  |Los Dos Caminos|');
	     writeln ('|-Plaza Sucre  |-Parque Carabobo|-Chacaito       |-Los Cortejitos|');
	     writeln ('|-Gato Negro   |-Bellas Artes   |-Chacao         |-La California |');
	     writeln ('|-Agua Salud   |-Colegio de Ing |-Altamira       |-Petare        |');
	     writeln ('|-Cabo Amarillo|                                 |-Palo Verde    |');
	     
	     writeln ('LINEA 2:');
	     writeln ('|-El Silencio|-La Paz    |-Mamera                  |');
	     writeln ('|-Capuchinos |-La Yaguara|-Caricuao                |');
	     writeln ('|-Maternidad |-Carapita  |-Zoologico               |');
	     writeln ('|-Artiguas   |-Antimano  |-Ruiz Pineda/Las Adjuntas|');
           
         Writeln ('LINEA 3:');
	     writeln ('|-Plaza Venezuela     |-La Bandera  |-Coche       |');
	     writeln ('|-Ciudad Universitaria|-El Valle    |-Mercado     |');
	     writeln ('|-Los Simbolos        |-Los Jardines|-La Rinconada|');
           
         writeln ('LINEA 4:');
	     writeln ('|-Zona Rental   |-Maternidad|-Antimano                |');
	     writeln ('|-Parque Central|-Artigas   |-Mamera                  |');
	     writeln ('|-Nuevo Circo   |-La Paz    |-Ruiz Pineda/Las Adjuntas|');
	     writeln ('|-Teatros       |-La Yaragua|                         |');
	     writeln ('|-Capuchinos    |-Carapita  |                         |');
         end;
         end;
         
         end;
         
         writeln (' Diga la linea que quiere seleccionar y Presione "1" para continuar');
         readln (z);
         
         clrscr;
         Writeln ('Seleccion la linea que quiere comprar segun su numero, de la manera siguiente:');
        
         writeln ('Presionar "1": LINEA 1');
         writeln ('Presionar "2": LINEA 2');
         writeln ('Presionar "3": LINEA 3');
         writeln ('Presionar "4": LINEA 4');
         writeln ('Presionar "5": LINEA 5');
         writeln ('Presionar "6": LINEA 6');
         writeln ('Presionar "7": LINEA 7');
         writeln ('Presionar "8": CLABETREN');
         
         
         readln (linea);
         clrscr;
        
          case (linea) of  
        1:begin
         writeln ('Usted a seleccionado "LINEA 1" estas son sus sub-estaciones:');
	     writeln ('|-Propatria    |-Capitolio      |-Plaza Venezuela|-Miranda        |');
	     writeln ('|-Perez Bonalde|-La Moyada      |-Sabana Grande  |-Los Dos Caminos|');
	     writeln ('|-Plaza Sucre  |-Parque Carabobo|-Chacaito       |-Los Cortejitos |');
	     writeln ('|-Gato Negro   |-Bellas Artes   |-Chacao         |-La California  |');
	     writeln ('|-Agua Salud   |-Colegio de Ing |-Altamira       |-Petare         |');
	     writeln ('|-Cabo Amarillo|                                 |-Palo Verde     |');
	     writeln ('Escriba la sub-estacion de la que va a salir(en minusculas)');
	     readln (salida);
	     while (salida<>'propatria') and (salida<>'perez bonalde') and (salida<>'plaza sucre') and (salida<>'gato negro') and (salida<>'agua salud') and (salida<>'cabo amarillo') and (salida<>'capitolio') and (salida<>'la moyada')
	     and (salida<>'parque carabobo') and (salida<>'bellas artes') and (salida<>'colegio de ing') and (salida<>'plaza venezuela') and (salida<>'sabana grande') and (salida<>'altamira') and (salida<>'miranda') and (salida<>'los dos caminos')
	     and (salida<>'los cortejitos') and (salida<>'la california') and (salida<>'petare') and (salida<>'palo verde') do
	     begin
	     clrscr;
	     writeln ('|-Propatria    |-Capitolio      |-Plaza Venezuela|-Miranda        |');
	     writeln ('|-Perez Bonalde|-La Moyada      |-Sabana Grande  |-Los Dos Caminos|');
	     writeln ('|-Plaza Sucre  |-Parque Carabobo|-Chacaito       |-Los Cortejitos |');
	     writeln ('|-Gato Negro   |-Bellas Artes   |-Chacao         |-La California  |');
	     writeln ('|-Agua Salud   |-Colegio de Ing |-Altamira       |-Petare         |');
	     writeln ('|-Cabo Amarillo|                                 |-Palo Verde     |');
	     writeln ('Por favor, diga una sub-estacion valida para la salida(en minusculas)');
	     readln (salida);
	     end;
	     writeln ('Escriba la sub-estacion a la que va a llegar(en minusculas');
	     readln (llegada);
	     while (llegada<>'propatria') and (llegada<>'perez bonalde') and (llegada<>'plaza sucre') and (llegada<>'gato negro') and (llegada<>'agua salud') and (llegada<>'cabo amarillo') and (llegada<>'capitolio') and (llegada<>'la moyada')
	     and (llegada<>'parque carabobo') and (llegada<>'bellas artes') and (llegada<>'colegio de ing') and (llegada<>'plaza venezuela') and (llegada<>'sabana grande') and (llegada<>'altamira') and (llegada<>'miranda') and (llegada<>'los dos caminos')
	     and (llegada<>'los cortejitos') and (llegada<>'la california') and (llegada<>'petare') and (llegada<>'palo verde') do
	     begin
	     clrscr;
	     writeln ('|-Propatria    |-Capitolio      |-Plaza Venezuela|-Miranda        |');
	     writeln ('|-Perez Bonalde|-La Moyada      |-Sabana Grande  |-Los Dos Caminos|');
	     writeln ('|-Plaza Sucre  |-Parque Carabobo|-Chacaito       |-Los Cortejitos |');
	     writeln ('|-Gato Negro   |-Bellas Artes   |-Chacao         |-La California  |');
	     writeln ('|-Agua Salud   |-Colegio de Ing |-Altamira       |-Petare         |');
	     writeln ('|-Cabo Amarillo|                                 |-Palo Verde     |');
	     writeln ('Por favor, diga una sub-estacion valida para la llegada(en minusculas)');
	     readln (llegada);
	     end;
	     
	   
	     end;
	
	     2:begin
	     writeln ('Usted a seleccionado "LINEA 2" estas son sus sub-estaciones');
	     writeln ('|-El Silencio|-La Paz    |-Mamera                  |');
	     writeln ('|-Capuchinos |-La Yaguara|-Caricuao                |');
	     writeln ('|-Maternidad |-Carapita  |-Zoologico               |');
	     writeln ('|-Artiguas   |-Antimano  |-Ruiz Pineda/Las Adjuntas|');
	     writeln ('Escriba la sub-estacion de la que va a salir(en minusculas)');
	     readln (salida);
	     while (salida<>'el silencio') and (salida<>'capuchinos') and (salida<>'maternidad') and (salida<>'artiguas') and (salida<>'la paz') and (salida<>'la yaguara') and (salida<>'carapita') and (salida<>'antimano')
	     and (salida<>'mamera') and (salida<>'caricuao') and (salida<>'zoologico') and (salida<>'ruiz pineda') and (salida<>'las adjuntas') do
	     begin
	     clrscr;
	     writeln ('|-El Silencio|-La Paz    |-Mamera                  |');
	     writeln ('|-Capuchinos |-La Yaguara|-Caricuao                |');
	     writeln ('|-Maternidad |-Carapita  |-Zoologico               |');
	     writeln ('|-Artiguas   |-Antimano  |-Ruiz Pineda/Las Adjuntas|');
	     writeln ('Por favor, diga una sub-estacion valida para la salida(en minusculas)');
	     readln (salida);
	     end;
	     
	     writeln ('Escriba la sub-estacion a la cual va a llegar(en minusculas)');
	     readln (llegada);
	     while (llegada<>'el silencio') and (llegada<>'capuchinos') and (llegada<>'maternidad') and (llegada<>'artiguas') and (llegada<>'la paz') and (llegada<>'la yaguara') and (llegada<>'carapita') and (llegada<>'antimano')
	     and (llegada<>'mamera') and (llegada<>'caricuao') and (llegada<>'zoologico') and (llegada<>'ruiz pineda') and (llegada<>'las adjuntas') do
	     begin
	     clrscr;
	     writeln ('|-El Silencio|-La Paz    |-Mamera                  |');
	     writeln ('|-Capuchinos |-La Yaguara|-Caricuao                |');
	     writeln ('|-Maternidad |-Carapita  |-Zoologico               |');
	     writeln ('|-Artiguas   |-Antimano  |-Ruiz Pineda/Las Adjuntas|');
	     writeln ('Por favor, diga una sub-estacion valida para la llegada(en minusculas)');
	     readln (llegada);
	     end;
	     
	     end;
	     
	     3:begin
	     writeln ('Usted a seleccionado "LINEA 3" estas son sus sub-estaciones:');
	     writeln ('|-Plaza Venezuela     |-La Bandera  |-Coche       |');
	     writeln ('|-Ciudad Universitaria|-El Valle    |-Mercado     |');
	     writeln ('|-Los Simbolos        |-Los Jardines|-La Rinconada|');
         writeln ('Escriba la sub-estacion de la que va a salir(en minusculas)');
	     readln (salida);
	     clrscr;
	     while (salida<>'plaza venezuela') and (salida<>'ciudad universitaria') and (salida<>'los simbolos') and (salida<>'la bandera') and (salida<>'el valle') and (salida<>'los jardines') and (salida<>'coche')
	     and (salida<>'mercado') and (salida<>'la rinconada') do
	     begin
	     clrscr;
	     writeln ('|-Plaza Venezuela     |-La Bandera  |-Coche       |');
	     writeln ('|-Ciudad Universitaria|-El Valle    |-Mercado     |');
	     writeln ('|-Los Simbolos        |-Los Jardines|-La Rinconada|');
	     writeln ('Por favor, diga una sub-estacion valida para la salida(en minusculas)');
	     readln (salida);
	     end;
	     writeln ('Escriba la sub-estacion a la que va a llegar(en minusculas)');
	     readln (llegada);
	      while (llegada<>'plaza venezuela') and (llegada<>'ciudad universitaria') and (llegada<>'los simbolos') and (llegada<>'la bandera') and (llegada<>'el valle') and (llegada<>'los jardines') and (llegada<>'coche')
	     and (llegada<>'mercado') and (llegada<>'la rinconada') do
	     begin
	     writeln ('|-Plaza Venezuela     |-La Bandera  |-Coche       |');
	     writeln ('|-Ciudad Universitaria|-El Valle    |-Mercado     |');
	     writeln ('|-Los Simbolos        |-Los Jardines|-La Rinconada|');
	     writeln ('Por favor, diga una sub-estacion valida para la llegada(en minusculas)');
	     readln (llegada);
	     end;
	     end;
	    
	     4:begin
	     writeln ('Usted a seleccionado "LINEA 4" estas son sus sub-estaciones:');
	     writeln ('|-Zona Rental   |-Maternidad|-Antimano                |');
	     writeln ('|-Parque Central|-Artigas   |-Mamera                  |');
	     writeln ('|-Nuevo Circo   |-La Paz    |-Ruiz Pineda/Las Adjuntas|');
	     writeln ('|-Teatros       |-La Yaragua|                         |');
	     writeln ('|-Capuchinos    |-Carapita  |                         |');
	     
	     writeln ('Escriba la sub-estacion de la que va a salir(en minusculas)');
	     readln (salida);
	      while (salida<>'zona rental') and (salida<>'parque central') and (salida<>'nuevo circo') and (salida<>'teatros') and (salida<>'capuchinos') and (salida<>'maternidad') and (salida<>'artigas')
	     and (salida<>'la paz') and (salida<>'la yaragua') and (salida<>'carapita') and (salida<>'antimano') and (salida<>'mamera') and (salida<>'ruiz pineda') and (salida<>'las adjuntas') do
	     begin
	     clrscr;
	     writeln ('|-Zona Rental   |-Maternidad|-Antimano                |');
	     writeln ('|-Parque Central|-Artigas   |-Mamera                  |');
	     writeln ('|-Nuevo Circo   |-La Paz    |-Ruiz Pineda/Las Adjuntas|');
	     writeln ('|-Teatros       |-La Yaragua|                         |');
	     writeln ('|-Capuchinos    |-Carapita  |                         |');
	     writeln ('Por favor, diga una sub-estacion valida para la salida(en minusculas)');
	     readln (salida);
	     end;
	     
	     writeln ('Escriba la sub-estacion a la que va a llegar(en minusculas)');
	     readln (llegada);
	     while (llegada<>'zona rental') and (llegada<>'parque central') and (llegada<>'nuevo circo') and (llegada<>'teatros') and (llegada<>'capuchinos') and (llegada<>'maternidad') and (llegada<>'artigas')
	     and (llegada<>'la paz') and (llegada<>'la yaragua') and (llegada<>'carapita') and (llegada<>'antimano') and (llegada<>'mamera') and (llegada<>'ruiz pineda') and (llegada<>'las adjuntas') do
	     begin
	     clrscr;
	     writeln ('|-Zona Rental   |-Maternidad|-Antimano                |');
	     writeln ('|-Parque Central|-Artigas   |-Mamera                  |');
	     writeln ('|-Nuevo Circo   |-La Paz    |-Ruiz Pineda/Las Adjuntas|');
	     writeln ('|-Teatros       |-La Yaragua|                         |');
	     writeln ('|-Capuchinos    |-Carapita  |                         |');
	     writeln ('Por favor, diga una sub-estacion valida para la llegada(en minusculas)');
	     readln (llegada);
	     end;
	     
	     end;
	     
	     5:begin
	     writeln ('Usted a seleccionado "LINEA 5" estas son sus sub-estaciones:');
	     writeln ('|-Bello Monte         |-Bello Campo|-Boleita      |');
	     writeln ('|-Las Mercedes        |-Hugo Chavez|-El Marquez   |');
	     writeln ('|-Parque Simon Bolivar|-Montecristo|-Warairarepano|');
	     writeln ('Escriba la sub-estacion de la que va a salir(en minusculas)');
	     readln (salida);
	      while (salida<>'bello monte') and (salida<>'las mercedes') and (salida<>'parque simon bolivar') and (salida<>'bello campo') and (salida<>'hugo chavez') and (salida<>'motecristo') and (salida<>'boleita')
	     and (salida<>'el marquez') and (salida<>'warairarepano') do
	     begin
	     clrscr;
	     writeln ('|-Bello Monte         |-Bello Campo|-Boleita      |');
	     writeln ('|-Las Mercedes        |-Hugo Chavez|-El Marquez   |');
	     writeln ('|-Parque Simon Bolivar|-Montecristo|-Warairarepano|');
	     writeln ('Por favor, diga una sub-estacion valida para la salida(en minusculas)');
	     readln (salida);
	     end;
	     writeln ('Escriba la sub-estacion a la que va a llegar(en minusculas)');
	     readln (llegada);
	     while (llegada<>'bello monte') and (llegada<>'las mercedes') and (llegada<>'parque simon bolivar') and (llegada<>'bello campo') and (llegada<>'hugo chavez') and (llegada<>'motecristo') and (llegada<>'boleita')
	     and (llegada<>'el marquez') and (llegada<>'warairarepano') do
	     begin
	     clrscr;
	     writeln ('|-Bello Monte         |-Bello Campo|-Boleita      |');
	     writeln ('|-Las Mercedes        |-Hugo Chavez|-El Marquez   |');
	     writeln ('|-Parque Simon Bolivar|-Montecristo|-Warairarepano|');
	     writeln ('Por favor, diga una sub-estacion valida para la llegada(en minusculas)');
	     readln (llegada);
	     end;
	     
	     end;
	     
	     6:begin
	     writeln ('Usted a seleccionado "LINEA 6" estas son sus sub-estaciones:');
	     writeln ('|-Zoologico|-La Rinconada|');
         
         writeln ('Escriba la sub-estacion de la que va a salir(en minusculas)');
	     readln (salida);
	     while (salida<>'zoologico') and (salida<>'la rinconada') do
	     begin
	     clrscr;
	     writeln ('|-Zoologico|-La Rinconada|');
	     writeln ('Por favor, diga una sub-estacion valida para la salida(en minusculas)');
	     readln (salida);
	     end;
	     writeln ('Escriba la sub-estacion a la que va a llegar(en minusculas)');
	     readln (llegada);
	     while (llegada<>'zoologico') and (llegada<>'la rinconada') do
	     begin
	     clrscr;
	     writeln ('|-Zoologico|-La Rinconada|');
	     writeln ('Por favor, diga una sub-estacion valida para la llegada(en minusculas)');
	     readln (llegada);
	     end;
	     
	     
	     end;
	     
	     7:begin
	      writeln ('Usted a seleccionado "LINEA 7" estas son sus sub-estaciones:');
	      writeln ('|-Las Flores|-El Cristo        |-Roosevelt    |');
	      writeln ('|-Panteon   |-Roca Tarpeya     |-La Bandera   |');
	      writeln ('|-Socorro   |-Presidente Medina|-Los Ilustres |');
	      writeln ('|-La Moyada |-INCES            |              |');
          
          writeln ('Escriba la sub-estacion de la que va a salir(en minusculas)');
	      readln (salida);
	      while (salida<>'las flores') and (salida<>'panteon') and (salida<>'socorro') and (salida<>'la moyada') and (salida<>'el cristo') and (salida<>'roca tarpeya') and (salida<>'presidente medina')
	     and (salida<>'INCES') and (salida<>'roosevelt') and (salida<>'la bandera') and (salida<>'los ilustres')  do
	     begin
	     clrscr;
	     writeln ('|-Las Flores|-El Cristo        |-Roosevelt    |');
	     writeln ('|-Panteon   |-Roca Tarpeya     |-La Bandera   |');
	     writeln ('|-Socorro   |-Presidente Medina|-Los Ilustres |');
	     writeln ('|-La Moyada |-INCES            |              |');
	     writeln ('Por favor, diga una sub-estacion valida para la salida(en minusculas)');
	     readln (salida);
	     end;
	      writeln ('Escriba la sub-estacion a la que va a llegar(en minusculas)');
	      readln (llegada);
	      while (llegada<>'las flores') and (llegada<>'panteon') and (llegada<>'socorro') and (llegada<>'la moyada') and (llegada<>'el cristo') and (llegada<>'roca tarpeya') and (llegada<>'presidente medina')
	     and (llegada<>'INCES') and (llegada<>'roosevelt') and (llegada<>'la bandera') and (llegada<>'los ilustres')  do
	     begin
	     clrscr;
	     writeln ('|-Las Flores|-El Cristo        |-Roosevelt    |');
	     writeln ('|-Panteon   |-Roca Tarpeya     |-La Bandera   |');
	     writeln ('|-Socorro   |-Presidente Medina|-Los Ilustres |');
	     writeln ('|-La Moyada |-INCES            |              |');
	     writeln ('Por favor, diga una sub-estacion valida para la llegada(en minusculas)');
	     readln (llegada);
	     end;
	      
	      end;
	      
	      8:begin
	      writeln ('Usted a seleccionado "CLABETREN" estas son sus sub-estaciones:');
	      writeln ('|-Petare 2   |-5 de Julio |-Wararairarepano|');
	      writeln ('|-19 de Abril|-24 de Julio|                |');
          
          writeln ('Escriba la sub-estacion de la que va a salir(en minusculas)');
	      readln (salida);
	      while (salida<>'petare 2') and (salida<>'19 de abril') and (salida<>'5 de julio') and (salida<>'24 de julio') and (salida<>'warairapena') do
	      begin
	      clrscr;
	      writeln ('|-Petare 2   |-5 de Julio |-Wararairarepano|');
	      writeln ('|-19 de Abril|-24 de Julio|                |');
	      writeln ('Por favor, diga una sub-estacion valida para la salida(en minusculas)');
	      readln (salida);
	      end;
	      writeln ('Escriba la sub-estacion a la que va a llegar(en minusculas)');
	      readln (llegada);
	      while (llegada<>'petare 2') and (llegada<>'19 de abril') and (llegada<>'5 de julio') and (llegada<>'24 de julio') and (llegada<>'warairapena') do
	      begin
	      clrscr;
	      writeln ('|-Petare 2   |-5 de Julio |-Wararairarepano|');
	      writeln ('|-19 de Abril|-24 de Julio|                |');
	      writeln ('Por favor, diga una sub-estacion valida para la llegada(en minusculas)');
	      readln (llegada);
	      end;
	      end;
	    
	    
	    
	   
	   end;
	  
	  clrscr;
	  writeln ('Por favor introduzca la cantidad que va a depositar(maximo 10000):');
	  readln (pago);
	  
	  while (pago<monto) do
	  begin
	  clrscr;
	  writeln ('Su saldo es insuficiente, por favor deposite el monto a pagar o mas');
	  readln (pago);
	  end;
	  while(pago>10000)do
	  begin
	  clrscr;
	  writeln ('El deposito maximo es de 10000 introduzca una cantidad menor');
	  read (pago);
	  end;
	  
	  if (pago=monto) or (pago>monto) then
	  begin
	    
	   clrscr;
	   writeln ('En lo siguiente su factura de compra:');
       writeln ('Nro de Fac:');
       begin
         factura:= random(10000);
       writeln (factura);
      end;
       writeln ('Nombre:');
       writeln (nombre);
       writeln ('Apellido:');
       writeln (apellido);
       writeln ('Cedula:');
       writeln (cedula);
       writeln ('Sub-estacion de salida:');
       writeln (salida);
       writeln ('Sub-estacion de llegada:');
       writeln (llegada);
       writeln ('Monto:');
       writeln (monto);
       writeln ('Cambio:');
       writeln (pago-monto);
       writeln ('->Esta seguro de realizar la compra?');
       writeln ('  1=Si');
       writeln ('  2=No');
       readln (confirmacion);
       
       while (confirmacion<>1) and (confirmacion<>2) do
       begin
       clrscr;
       writeln ('Respuesta incorrecta, por favor seleccione una valida');
       writeln ('1=si');
       writeln ('2=no');
       readln (confirmacion);
       end;
       
       
      
       
       case confirmacion of 
  
       1:begin
        clrscr;
        writeln ('1-Utilizar Boleto');
        writeln ('2-Ver Sistema');
        writeln ('Seleccione la opcion mediante su numero:');
        readln (utilizar);
        clrscr;
     
        case utilizar of
        
            1:begin
            writeln ('Por favor, introduzca su cedula para permitir utilizar su boleto');
            read (validacion);
            
             while (validacion<>cedula) do
             begin
             writeln ('La cedula no es la correcta, intente nuevamente');
             readln (validacion); 
             end;
             if (validacion=cedula) then
             begin
             writeln ('Cedula confirmada');
             end;
            writeln ('Usted tiene boletos:');
            writeln (boletos);
            writeln ('Esta seguro de que quiere utilizar el boleto?');
            writeln ('1=si');
            writeln ('2=no');
            readln (b);
            
               while (b<>1) and (b<>2) do
               begin
               clrscr;
               writeln ('Respuesta incorrecta, por favor seleccione una valida');
               writeln ('1=si');
               writeln ('2=no');
               readln (b);
               end;
            
 
               if (b=1) then
               begin
               writeln ('Usted ha utilizado 1 boleto');
               writeln ('Le quedan:');
               resta:=boletos-1;
               writeln (resta);
               writeln ('Gracias por utilizar nuestro sistema de compra de boletos de Caracas, feliz viaje');
               end;
               
               if (b=2) then
               writeln ('Lo esperamos cuando quiera usar su boleto, gracias por usar el sistema');
               end;
        
        
            
            2:begin
            writeln ('Ingrese la contraseña');
            read (contra);
           
            clrscr;
            writeln ('Confirme la contraseña');
            read (clave);
            
              while (clave<>contra) or (clave=contra) do
              begin
              clrscr;
              writeln ('Contraseña incorrecta, intente nuevamente');
              readln (clave);
              end;  
               
            end;
            end;
        
           end;
           
            

        2:begin
             writeln ('Hasta luego, gracias por utilizar nuestro sistema de compra de boletos de Caracas');
             end;
       
        end;
       
  
  
   end;
 end;
 
'no':begin
clrscr;
 writeln ('Gracias, vuelva pronto para utilizar el sistema de compra de boletos de Caracas en otra ocasion');
 end;



end;

End.
