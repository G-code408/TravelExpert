/*
	HW8B
	Brian Huynh
 	Omar Abdulaziz
 	Davin Benson
	
	This Expert System specializes on traveling within California with public transportation.
*/





/* Fly section: */

% source: https://www.oaklandairport.com/airlines/flight-information/
/* Planes leaving oakland */
fly(oakland, san_diego).
fly(oakland, los_angeles).
fly(oakland, burbank).
fly(oakland, santa_ana).
fly(oakland, crescent_city).
fly(oakland, ontario).

% source: https://www.flylax.com/en/flight-search-list?type=dep
/* Planes leaving los_angeles */
fly(los_angeles, san_francisco).
fly(los_angeles, san_jose).
fly(los_angeles, oakland).
fly(los_angeles, sacramento).

% source: https://www.flysfo.com/flight-info/flight-status
/* Planes leaving san_francisco */
fly(san_francisco, burbank).
fly(san_francisco, fresno).
fly(san_francisco, los_angeles).
fly(san_francisco, newark).
fly(san_francisco, santa_ana).
fly(san_francisco, sacramento).
fly(san_francisco, san_diego).
fly(san_francisco, san_luis_obispo).
fly(san_francisco, santa_barbara).

% source: https://hollywoodburbankairport.com/flight-information/airlines_nonstops/
/* Planes leaving burbank */
fly(burbank, oakland).
fly(burbank, san_francisco).
fly(burbank, san_jose).
fly(burbank, sacramento).

% source: https://www.san.org/Flights/Flight-Status#3438191-departures
/* Planes leaving san_diego */
fly(san_diego, sacramento).
fly(san_diego, san_francisco).
fly(san_diego, san_jose).


/* Bus Section */

% source: http://bustracker.greyhound.com/stops/892540/Oakland_CA/departing
/* Busses leaving oakland */
bus(oakland, san_francisco).
bus(oakland, los_angeles).

% source: http://bustracker.greyhound.com/stops/892001/Los_Angeles_CA
/* Busses leaving los_angeles */
bus(los_angeles, san_francisco).
bus(los_angeles, fresno).
bus(los_angeles, palmdale).

/* Busses leaving san_francisco */
bus(san_francisco, los_angeles).


/* Train Section */

% source: https://www.amtrak.com/home.html
/* Trains leaving oakland */
train(oakland, los_angeles).
train(oakland, bakersfield).
train(oakland, santa_barbara).
train(oakland, stockton).
train(oakland, san_jose).

/* Trains leaving los_angeles */
train(los_angeles, oakland).
train(los_angeles, san_diego).
train(los_angeles, bakersfield).

/* Trains leaving sacramento */
train(sacramento, stockton).

/* Trains leaving stockton */
train(stockton, sacramento).
train(stockton, bakersfield).
train(stockton, oakland).

% functions below

% connecting flights check
flight(X, Z):- fly(X, Y), fly(Y, Z).

% connecting bus check
busses(X, Z):- bus(X, Y), bus(Y, Z).

% connecting train check
trains(X, Z):- train(X, Y), train(Y, Z).

% modes of travel
base(X,Y):- fly(X,Y).
base(X,Y):- train(X,Y).
base(X,Y):- bus(X,Y).
multi(X,Z):- flight(X,Z).
multi(X,Z):- busses(X,Z).
multi(X,Z):- trains(X,Z).

% connecting travel path checks
travel(X,Z) :- base(X,Z).
travel(X,Z) :- base(X,Y), base(Y,Z).

travel(X,Z):- base(X,Y), multi(Y,Z).
travel(X,Z):- multi(X,Y), base(Y,Z).

travel(X,Z):- travel(X,Y), travel(Y,Z).

