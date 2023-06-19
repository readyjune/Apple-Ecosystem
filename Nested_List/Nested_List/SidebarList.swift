//
//  SidebarList.swift
//  Nested_List
//
//  Created by 김진우 on 2022/12/15.
//

import SwiftUI

struct SidebarList: View {
    
    let items: [Item]
    
    var body: some View {
        List {
            Label("Home", systemImage: "house")
            
            OutlineGroup(items, children: \.children) {
                Text($0.title)
            }
            
            Section(header: Text("Settings")) {
                Label("Account", systemImage: "person.crop.circle")
                Label("Help", systemImage: "person.3")
                Label("Logout", systemImage: "applelogo")
            }
            
        }.listStyle(SidebarListStyle())
    }
}

struct SidebarList_Previews: PreviewProvider {
    static var previews: some View {
        SidebarList(items: Item.stubs)
    }
}
