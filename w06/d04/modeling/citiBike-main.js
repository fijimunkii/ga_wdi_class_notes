system = new CitiBikeSystem(); // creates the overall citiBike system

// creates station 001 with 30 slots to the system
system.addStation(001, 30);

bike0001 = new CitiBike(0001);  // creates a new bike with id 0001
bike0002 = new CitiBike(0002);
etc..

station1.addBike(bike0001); // adds bike 0001 to the station
station1.addBike(bike0002);

station1.checkOut(0004);

station1.listBikes(); // returns an object of the listBikes

      {
        checkedIn: [
          0001,
          0002,
          0003
        ],
        checkedOut: [
          0004
        ]
      }

system.stationCheck(); // returns an object of all stations

      {
        station1: {
          checkedIn: [
            0001,
            0002,
            0003
          ],
          checkedOut: [
            0004
          ]
        },
        station2: {
          checkedIn: [
            0089,
            0090,
            0099
          ],
          checkedOut: [
            0091,
            0092,
            0093,
            0094,
            0095,
            0096,
            0097,
            0098
          ]
        }
      }


      }
