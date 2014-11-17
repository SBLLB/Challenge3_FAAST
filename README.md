FAAST System
=============

Week 1 Challenge at Maker's Academy
-----------------------------------

### The 'Architect Badge Challenge' 


####The Scenario...

+ There will be a number of trains inside the system
+ Trains will travel from station to station
+ Inside of a station, when the train stops, passengers will alight and enter the carriages of the train
+ A passenger will touch in at the station, and touch out at the destination station
+ Each coach of a train can hold up to 40 passengers
+ Each train is made of a number of coaches
+ Passengers can only touch in at a station if their balance is more than 2 GBP

#### The Solution

##### Methods, Attributes & Classes

* Commuter
* Station
* Train
* Commuter Holder (module)

##### How To Use
* Initialize Station.new, Train.new, Person.new.  *Note, ideally introduce multiple stations to enable trains to travel to and fro.*
* To introduce a commuter to the FAAST system ->   *commuter.touch_in(station)*
* To get a commuter to board a train ->  *commuter.board(train, station)*
* To get a commuter to disembark a train ->   *commuter.disemark(train, station)*
* To top up a commuter's Oyster Card ->   *commuter.top_up(value)*
* To get a train to arrive in a station ->   *train.arrive(station)*
* To get a train to depart from a station  ->   *train.depart(station)*

##### Defaults and Customisable Objects
* A  Commuter is created with a starting Oyster Card balance of £10
* A Train is created with a default of 2 carriages. To set a different number of carriages ->   *train= Train.new(no_of_carriages)*
* Each Train carriage has a set capacity of 40 Commuters
* A Station has a set platform capacity of 2. Only two trains can be in a station at any one time.
* A Station has a Commuter capacity of 200 unless overridden. ->  *station= Station.new(capacity)*


#### Tools Used To Build

* SublimeText
* RSPEC
* Command Line
* IRB
* Github
