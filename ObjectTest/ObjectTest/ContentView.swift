//
//  ContentView.swift
//  ObjectTest
//
//  Created by 김진우 on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var recogView = RecognitionView()
    
    var body: some View {
        if let image = recogView.frame {
            Image(image, scale: 1.0,
                  orientation: .up,
                  label: Text("The Camera"))
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
        } else {
            Text("No data!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
