//
//  Information.swift
//  CaneToadApp
//
//  Created by 김진우 on 2022/09/13.
//

import SwiftUI

struct Information: View {
    var footer: some View {
        Text("This is an information part")
    }

    var body: some View {
        List {
            Section(header: Text("Section #1")) {
                Text("Question1")
                Text("Number 1️⃣")
            }
            Section(header: Text("Section #2"), footer: footer) {
                Text("Question2 🥈")
                Text("Indeed✌️")
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Report()
            .previewInterfaceOrientation(.portrait)
    }
}
