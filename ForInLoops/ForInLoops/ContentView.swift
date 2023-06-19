//
//  ContentView.swift
//  ForInLoops
//
//  Created by 김진우 on 2022/08/09.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 1
    
    var body: some View {
        VStack {
            Button("Tap Me!"){
                counter = counter + 1
                if (counter == 5) {
                    counter = 1
                }
            }
        
            ForEach(1...counter, id: \.self) { valueCount in
                Text(String(valueCount))
                    .padding()
        
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
