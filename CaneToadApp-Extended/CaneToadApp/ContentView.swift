//
//  ContentView.swift
//  CaneToadApp
//
//  Created by 김진우 on 2022/09/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Report()
                .badge(10)
                .tabItem() {
                    Image(systemName: "phone.fill")
                        Text("Report")
                }
            MapTest()
                .tabItem() {
                    Image(systemName: "person.2.fill")
                        Text("Map")
                }
            Information()
                .tabItem() {
                    Image(systemName: "slider.horizontal.3")
                        Text("Information")
                }
            SavedData()
                .tabItem() {
                    Image(systemName: "data.fill")
                    Text("Data")
                }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
