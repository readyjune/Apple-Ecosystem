//
//  ContentView.swift
//  My First App
//
//  Created by 김진우 on 2022/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Hello Jinwoo!", action: {
            print("Hello Jinwoo!")
        })
        .foregroundColor(Color.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
