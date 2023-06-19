//
//  ItemList.swift
//  Nested_List
//
//  Created by 김진우 on 2022/12/15.
//

import SwiftUI

struct ItemList: View {
    
    let items: [Item]
    
    var body: some View {
        List(items, children: \.children) {
            Text($0.title)
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList(items: Item.stubs)
    }
}


extension Item {
    
    static var stubs: [Item] = [
        Item(title: "Computers", children: [
            Item(title: "Desktops", children: [
                Item(title: "iMac", children: nil),
                Item(title: "Mac Pro", children: nil),
                Item(title: "Mac Mini", children: nil)
            
            ]),
            Item(title: "Laptoo", children: [
                Item(title: "MacBook Pro", children: nil),
                Item(title: "MacBook Air", children: nil)
                
            ])
        ])
    ]
}
