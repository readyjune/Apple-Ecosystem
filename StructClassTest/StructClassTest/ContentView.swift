//
//  ContentView.swift
//  StructClassTest
//
//  Created by 김진우 on 2022/08/16.
//

import SwiftUI

struct Appointment {
    var description: String = ""
    var startingHours: Int = 0
    var startingMins: Int = 0
    var endingHours: Int = 0
    var endingMins: Int = 0
    var staffRequired: Int = 1
    
    var length: Int {
        return ((endingHours - startingHours) * 60) + (endingMins - startingMins)
    }
    
    func calculateStaffMinutes() -> Int {
        return (length * staffRequired)
    }
    
    func printAppointment() {
        print(description + ", Length: " + String(length) + ", Staff-Mins: " + String(calculateStaffMinutes()))
    }
    
    mutating func changeStaffNumbrs() {
        staffRequired = 0
    }
    
    init(description: String, startingHours: Int, startingMins: Int, endingHours: Int, endingMins: Int, staffRequired: Int) {
        self.description = description
        self.startingHours = startingHours
        self.startingMins = startingMins
        self.endingHours = endingHours
        self.endingMins = endingMins
        self.staffRequired = staffRequired
    }
    
    init(description: String, startingHours: Int, startingMins: Int, elapsedTime: Int, staffRequired: Int) {
        let theMins = elapsedTime & 60
        let theHours = (elapsedTime - theMins) / 60
        self.description = description
        self.startingHours = startingHours
        self.startingMins = startingMins
        self.endingHours = startingHours + theHours
        self.endingMins = startingMins + theMins
        self.staffRequired = staffRequired
    }
    
}



class Address{
    var postcode: Int
    var suburb: String
    var street_name: String
    var street_number: Int
    
    
    init(postcode: Int, suburb: String, street_name: String, street_number: Int) {
        self.postcode = postcode
        self.suburb = suburb
        self.street_name = street_name
        self.street_number = street_number
    }
    
    func toString() -> String {
        return (String(postcode) + "postcode" + String(suburb) + "suburb" + String(street_name) + street_name + String(street_number) + "street_number")
    }
    
}

class Residence: Address {
    var bedrooms: Int
    var bathrooms: Int
    var carbays: Int
    
    init(bedrooms: Int, bathrooms: Int, carbays: Int, postcode: Int, suburb: String, street_name: String, street_number: Int) {
        self.bedrooms = bedrooms
        self.bathrooms = bathrooms
        self.carbays = carbays
        super.init(postcode: postcode, suburb: suburb, street_name: street_name, street_number: street_number)
    }
    
    override func toString() -> String{
        return(String(bedrooms) + "bedrooms" +  String(bathrooms) + "bathrooms" + String(carbays) + " carbays " + super.toString())
    }
}
//usage
//var myself : Address = Address(postcode: "6000", suburb: "vicpark", street_name: "newcastle", street_numer: "111")
//print(myself)


struct ContentView: View {
    var body: some View {
        VStack{
            Button("Structure") {
                let theAppointment: Appointment = Appointment(description: "Test", startingHours: 8, startingMins: 30, elapsedTime: 60, staffRequired: 1)
                theAppointment.printAppointment()
            }
            Button("Class") {
                let theResidence: Residence = Residence(bedrooms: 2, bathrooms: 2, carbays: 2, postcode: 6000, suburb: "vicpark", street_name: "kent st", street_number: 123)
                print(theResidence.toString())
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
