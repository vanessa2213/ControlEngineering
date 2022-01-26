a=randi(200);               %Desired horizontal position
b=randi(250);               %Desired vertical position

tHor=round(a/2.25 + 1);             %time that takes horizontal motor to reach a

tVer=tHor + round(b/(2*2.25) + 1);      %time,after tHor, that takes vertical motor to reach b

tPla=tVer + round(40/(0.5*2.25) + 1)+1;     %time, after tVer, that takes placement motor to reach 40 cm
tPla2= tPla + round(40/(0.5*2.25) + 1)+2;   %time after tPla that placement motor take to reach 0 cm again

tHor2= tPla2 + round(100/2.25 + 1)+1;       %time, after tPla2, that horizontal motor takes to reach 100 cm

tVer2= tHor2 +round(125/(2*2.25) + 1)+1;    %time, after tHor2, that vertical motor takes to reach 125 cm

tPla3 = tVer2 + round(25/(0.5*2.25) + 1)+1; %time, after tVer2, that placement motor takes to reach 25 cm

tVer3 = tPla3 + round(1/(2*2.25) + 1)+2;    %time, after tPla3, that vertical motor takes to reach 1 cm + 2s

tF= tVer3 +  round(25/(0.5*2.25) + 1)+2;    %time, after tVer3, that the placement motor take to reach 0 cm 

tF2= tF + round(100/2.25 +1 );              %time after tF that horizontal motor takes to reach 0 cm
 

d= round(30/2.25+1);                    %time to takes 1st disp motor to arrive 30cm
tDisFi=d+2;                             %time on stations
tDisFi2= tDisFi +2;                     %time after the 2 seconds of the station
tDisFi3 =tDisFi2 +round(5/2.25+1)+2;    %time after the 2 seconds on the station

tDisHeat= d + 2;                        %time after disp arrive plus the 2s on the station
tDisHeat2=tDisHeat + 60;                %time after waiting for the station
tDisHeat3= tDisHeat2 + d + 2;           %time after comes back to 30 cm and wait 2 seconds

e =  round(30/(1.2*2.25) + 1);          %time to takes 2nd disp motor to arrive 30 cm

tDisCol = e + 2;                        %time on station
tDisCol2 = tDisCol + 40;                %time after waiting the station
tDisCol3 = tDisCol2 + e + 2;            %time after goes to 30 cm + 2 seconds

tDisPack = e + 2;                       %time on station
tDisPack2=tDisPack + 60;                %time after waiting the station
tDisPack3= tDisPack2 + e + 2;           %time after goes to 30 cm + 2 seconds

