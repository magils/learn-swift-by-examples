//Inheritance


/*
    This is a base class
 */

class Vehicle {
    var currentSpeed = 0.0;
    
    var description:String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    
    func makeNoises() {
        
    }
}

/*
    This is subclass of the Vehicle
 */
class Bycicle: Vehicle{
    var hasBasket = false
}


var bike = Bycicle()

bike.currentSpeed = 9.5
bike.hasBasket = true

print("\(bike.description)")


//Overriding properties of a class

class Train: Vehicle {
  
    //Overriding a property
    override var description: String {
        return "The current train speed is \(currentSpeed) MPH"
    }
    
    //Overriding a function
    override func makeNoises() {
        print("Choo Choo!")
    }
    
}



class AutomaticCar : Vehicle {
    
    var gear = 0
    var seatBealt = false
    let maxPassengers = 4
    var currentPassengers = 0
    
    override var currentSpeed: Double {
        
        didSet {
            gear = Int(currentSpeed  / 10.0) + 1
        }
        
    }
    
    
    override var description: String {
        return  "\(super.description) and gear at \(gear) with \(currentPassengers) passenger(s) on board"
    }
    
    
    override func makeNoises() {
        print("Piii Piii!")
    }
    
    
}



//Instance of Train

var myTrain = Train()

myTrain.makeNoises()
myTrain.currentSpeed = 12.2
print("\(myTrain.description)")




var myAutomaticCar = AutomaticCar()

myAutomaticCar.currentSpeed = 55
myAutomaticCar.currentPassengers = 2

print("\(myAutomaticCar.description)")

