//
//  TabBar.swift
//  MenuApp
//
//  Created by 김진우 on 2022/10/04.
//


import SwiftUI

@available(iOS 16.0, *)
struct TabBar: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem{
                    Label("List", systemImage: "house")
                }

        
        }
    }
}

@available(iOS 16.0, *)
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
