//
//  SavedData.swift
//  CaneToadApp
//
//  Created by 김진우 on 2022/09/27.
//

import SwiftUI

struct SavedData: View {
    
    @State var frogData: [Frog] = []
    
    var body: some View {
        
       // number_data = (decodedFrog?[0].number)!
  //      print(decodedFrog)
        
        let sortedFrogData = frogData.sorted(by: {$0.number > $1.number})
        
        VStack {
            ForEach(sortedFrogData) { frog in
                HStack {
                    Text("FrogNumber \(frog.number)")
                        .font(.system(size: 10))
                    Text("FrogDate \(frog.date)")
                        .font(.system(size: 10))
                    Text("FrogLongtitude \(frog.longtitude)")
                        .font(.system(size: 10))
                    Text("FrogLatitude \(frog.latitude)")
                        .font(.system(size: 10))
                }
            }
        }.task {
            let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            let archiveURL = documentsDirectory.appendingPathComponent("vari_library").appendingPathExtension("plist")
            
            //Set up to retrieve the data from the file
            let propertyListDecoder = PropertyListDecoder()
            let retrievedFrogData = try? Data(contentsOf: archiveURL)
            let decodedFrog = try? propertyListDecoder.decode([Frog].self, from: retrievedFrogData!)
            frogData = decodedFrog!
        }

     
      //  TextField("number is ", text: decodedFrog[0].number)
       // TextField("number is ", text: Frog.number)
        
        
//        print(decodedFrog)
//        print("Button is pressed")

        
    }
}

struct SavedData_Previews: PreviewProvider {
    static var previews: some View {
        SavedData()
    }
}
