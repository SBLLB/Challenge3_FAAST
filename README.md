##FAAST System


#### The 'Architect Badge Challenge'. Weekend Challenge, week 1 at Maker's Academy


###The Objective

Create a model of a tube system. The FAAST tube system has to cater for the following

+ There will be a number of trains inside the system
+ Trains will travel from station to station
+ Inside of a station, when the train stops, passengers will alight and enter the carriages of the train
+ A passenger will touch in at the station, and touch out at the destination station
+ Each coach of a train can hold up to 40 passengers
+ Each train is made of a number of coaches
+ Passengers can only touch in at a station if their balance is more than 2 GBP

### How To Use
####Commuter
Initialised with an OysterCard balance of £10.00.

* Adding a new commuter: 
``` commuter_name = Commuter.new ```

* Entering/Leaving a station:  
  ```commuter.touch_in(station)
commuter.touch_out(station)```

* Boarding/Disembarking a train:
	```commuter.board(train, station)
commuter.disemark(train, station)```

* Reading a commuter's Oyster Card Balance: 
Read instance Variable, @balance: ```commuter.balance```

* Topping up commuter's OysterCard:
```commuter.top_up(value)```

####Train
Initialised with a default of 2 carriages at a capacity of 40pax per carriage.

* Create a train with more/less that the default 2 carriages: ``` train = Train.new(no_of_carriages)```

* Arrive a train into a station: ```train.arrive(station)```

* Depart a train from a station: ```train.depart(station)```

* View what commuters are currently in the station: ``` train.commuter_list ```


####Station
Initialised with a default of 2 platforms, therefore only two trains can be in a station at one time. Also initialised with a commuter capacity of 200.

* Create a station with a capacity different to the default 200: ```station= Station.new(capacity)```

* View what trains are currently in the station: ``` station.train_list ```

* View what commuters are currently in the station: ``` station.commuter_list ```

### Technologies Used
* Ruby
* RSPEC
* SublimeText
* Command Line
* IRB
* Github

### To do 
[ ] Employ SOLID principles more throughout.
[ ] Separate Oystercard into separate class/module.
[ ] Enable Train to initiate with a default location of 'Depot'.
[ ] Ascertain what methods should be set to 'private' within each class. 
[ ] Introduce mock_model testing in rspec for CommuterHolder module. 

