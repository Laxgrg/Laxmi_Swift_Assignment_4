import Foundation

/*
 
 Instructions: You are tasked with creating a Swift program that models a camping trailer and its different systems using protocols and a class. The program should define protocols for managing the trailer's water system, electricity system, climate control, and entertainment system, each with specific properties and methods. Additionally, implement a class representing a camping trailer that conforms to these protocols.

 Requirements: Define any 2 of the 5 protocols, each protocol has:

 1 property related to the specific system.

 2 methods for managing or interacting with the system.

 Implement a class named Camper that conforms to any 2 of the 5 protocols.

 Ensure the class includes appropriate properties and methods to fulfill the requirements of each protocol.

 Protocols: (Define any 2 the following protocols)

 Trailer Property: brand (String) Methods: startEngine(), stopEngine()
 WaterSystem Property: waterCapacity (Double) Methods: fillWaterTank(), drainWaterTank()
 ElectricitySystem Property: batteryLevel (Double) Methods: chargeBattery(), checkBatteryLevel()
 ClimateControl Property: temperature (Double) Methods: setTemperature(_ temperature: Double), adjustFanSpeed()
 EntertainmentSystem Property: hasTV (Bool) Methods: turnOnTV(), turnOffTV()
 Just like we did in class the Camper class that must conform to the protocols you have adopted.

 write test code to demonstrate the functionality of the Camper class

   */

protocol EntertainmentSystem {
    
    var hasTVOn: Bool  { get set }
    
    func turnTVOn()
   
    func turnTVOff()
}

protocol ElectricitySystem {
    
    var currentBatteryLevel: Double { get set }
    
    var isBatteryMonitorOn: Bool { get }
    
    func chargeBattery()
    
    func checkBatteryLevel()
}

class Camper: EntertainmentSystem, ElectricitySystem {
    
    var hasTVOn: Bool
    var currentBatteryLevel: Double
    var isBatteryMonitorOn: Bool
    var batteryNotification: String
    
    init() {
        self.hasTVOn = false
        self.currentBatteryLevel = 15.0
        self.isBatteryMonitorOn = true
        self.batteryNotification = "Check battery level"
    }
    
    func turnTVOn() -> Void {
        if !self.hasTVOn {
            print("TV is on now....")
            self.hasTVOn = !self.hasTVOn
        }
        else {
            print("TV is already on...")
        }
    }
    
    func turnTVOff() -> Void {
        if self.hasTVOn {
            print("TV is off now...")
            self.hasTVOn = !self.hasTVOn
        }
        else {
            print("TV is already off...")
        }
    }
    
    func checkBatteryLevel() -> Void {
        if self.batteryNotification == "Check battery level" {
            print("Check the battery...")
        }
        else {
            print("battery is already checked...")
        }
    }
    
    func chargeBattery() -> Void {
        if currentBatteryLevel <= 10 {
            print("charge the battery...")
        }
        else {
            print("We can charge it later...")
        }
    }
}

var camper = Camper()

camper.turnTVOn()
camper.turnTVOff()
camper.turnTVOn()

camper.chargeBattery()
camper.checkBatteryLevel()

print(camper.currentBatteryLevel)
print(camper.isBatteryMonitorOn)

