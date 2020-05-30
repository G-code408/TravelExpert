# TravelExpert
A simple expert system made using PROLOG
HW8B Summary
The Expert System is designed to help you travel within California using public transportation. Your options are either using the airplane, bus, or train.
Facts have been organized by method of transportation. The connections between cities were pulled from real-world sources. For travel by airplane, we looked at regular airport schedules
And accordingly added those as possible connections. For travel by bus, we looked at greyhound schedules and for the train; Amtrak. There are comments in the program that have neatly divided the facts into 
Separate sections. 
Of course we’ve also added functions which can be used to query the knowledge base. There are three separate functions that check for connections with respect to the mode of transportation (airplane, bus, or train).
These connection functions take in cities as parameters and return true upon valid connections and false if invalid. These functions act as extenders and are used to in the case were there aren’t any direct connection between your location and destination. They can be used directly but also act as helpers in the multi functions. The base functions look to see if there is a direct flight, train , or bus from City X to City Y. The multi functions look find if there are two consecutive flights, busses, or trains, from City X to City Z. In both the base and multi functions, the method of transportation is fixed. The user is deciding to travel using a specific means of transportation. If the sole objective is to get from city X to city Z regardless of the transportation method, then the travel functions can be utilized. The travel function will consider all possible combinations to get from City X to City Z 

Below are some examples of queries: 

Is it possible to travel from Sacramento to Ontario ?
travel(Sacramento, Ontario).

Where can I travel to from Sacramento ? 
travel(Sacramento, X).

Is there a direct path from Oakland to los Angeles ?
base(Oakland, Los Angeles).

what are the direct destinations from Oakland ?
base(Oakland, Y ).

Is it possible to fly from Palmdale to Stockton (w/ layover) ?
flight(Palmdale, Stockton).

where can I go from Stockton using the train ?
trains(Stockton, Z).
