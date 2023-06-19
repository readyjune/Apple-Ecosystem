//
//  Information.swift
//  CaneToadApp
//
//  Created by 김진우 on 2022/09/13.
//

import SwiftUI

class Frog: Identifiable, CustomStringConvertible, Codable {
    var number: Int
    var date: Date
    var longtitude: Int
    var latitude: Int
    
    init(number: Int, date: Date, longtitude: Int, latitude: Int) {
        self.number = number
        self.date = date
        self.longtitude = longtitude
        self.latitude = latitude
    }
    
    var description: String {
        return "Frog number \(number)\ndate \(date)\nlongtitude \(longtitude)\nlatitude \(latitude)"
    }
    
}
    


struct Report: View {
    @State var textLongtitude = ""
    @State var textLatitude = ""
    @State var theStepper: Int = 0
    @State var theDate: Date = Date()
    @State var thePicker: Int = 0
    @State var num = 0
    @State var itemArray: [Frog] = []
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        VStack {
                            Stepper("How many", onIncrement: {
                                num += 1
                            }, onDecrement: {
                                num -= 1
                            })
                            
                            Text("The number is \(num)")
                        }
                    }
                    Section {
                        DatePicker(selection: $theDate,
                                   label : {Text("Date")
                            
                        })
                        HStack{
                            Text("Longtitude")
                                .font(.system(size: 15))
                            Spacer()
                            TextField("Type the longtitude", text: $textLongtitude)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 200)
                        }
                        HStack{
                            Text("Latitude")
                            Spacer()
                            TextField("Type the latitude", text: $textLatitude)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 200)
                        }
                    }
                }
                Spacer()
                Button(action: {
                    
                    let vari = Frog(number: num, date: theDate, longtitude: Int(textLongtitude) ?? 0, latitude: Int(textLatitude) ?? 0)
                    itemArray.append(vari)
                    
                    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
                    let archiveURL = documentsDirectory.appendingPathComponent("vari_library").appendingPathExtension("plist")

                    //encode and decode part
                    let propertyListEncoder = PropertyListEncoder()
                    let encodedFrog = try? propertyListEncoder.encode(itemArray)
                    
                    try? encodedFrog?.write(to: archiveURL, options: .noFileProtection)
                    
                    //Set up to retrieve the data from the file
                    let propertyListDecoder = PropertyListDecoder()
                    let retrievedFrogData = try? Data(contentsOf: archiveURL)
                    let decodedFrog = try? propertyListDecoder.decode([Frog].self, from: retrievedFrogData!)
                    
                    print(decodedFrog)
                    print("Button is pressed")
                    
                    num = 0
                    textLongtitude = ""
                    textLatitude = ""
                
                    
                }) {
                    Text("Submit")
                    .bold()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.black)
                    .background(Color.blue)
                    .clipShape(Circle())
                }.buttonStyle(PlainButtonStyle())
                
            }.navigationBarTitle("Report")
        }.navigationBarTitle("Report_detail")
    }
    
}



struct Report_Previews: PreviewProvider {
    static var previews: some View {
        Report()
    }
}
