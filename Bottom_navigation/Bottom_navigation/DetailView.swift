//
//  DetailView.swift
//  Bottom_navigation
//
//  Created by 김진우 on 2022/08/30.
//

import Foundation

struct DetailView : View {
    var body: some View {
        NaviagionView {
            NavigationLink("Navigate") {
                DetailView()
            }
        }
        .navigationBarTitle("Navigation")
    }
    
}
