//
//  ContentView.swift
//  IfStatements
//
//  Created by 김진우 on 2022/08/08.
//

import SwiftUI

struct ContentView: View {
    
    //@State var textElement: Color = Color.green
    @State var counter: Int = 0
    
    var body: some View {
        VStack {

            let theText: Text = Text("Colourful Text!")
            //theText.padding(20)
            
            if (counter == 0){
                theText.foregroundColor(.green)
            } else if (counter == 1) {
                theText.foregroundColor(.blue)
            } else if (counter == 2) {
                theText.foregroundColor(.red)
            } else if (counter == 3) {
                theText.foregroundColor(.orange)
            } else if (counter == 4) {
                theText.foregroundColor(.yellow)
            }

            
            Button("Change Colour!") {
                counter = counter + 1
                if (counter == 5) {
                    counter = 0
                }
                //print(counter)
                

                
            }
        }
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
