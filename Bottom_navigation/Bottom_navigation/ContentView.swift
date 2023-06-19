 //
//  ContentView.swift
//  Bottom_navigation
//
//  Created by 김진우 on 2022/08/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ViewA()
                .badge(10)
                .tabItem() {
                    Image(systemName: "phone.fill")
                        Text("Calls")
                }
            ViewB()
                .tabItem() {
                    Image(systemName: "person.2.fill")
                        Text("Contacts")
                }
            ViewC()
                .tabItem() {
                    Image(systemName: "slider.horizontal.3")
                        Text("Settings")
                }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
