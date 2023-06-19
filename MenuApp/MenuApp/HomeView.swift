//
//  HomeView.swift
//  MenuApp
//
//  Created by 김진우 on 2022/10/04.
//

import SwiftUI

@available(iOS 16.0, *)
struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                SandwichList(sandwich: Sandwich.all)
            }
            .navigationTitle("My Sandwich")

        }
        .navigationViewStyle(.stack)
    }
}

@available(iOS 16.0, *)
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
