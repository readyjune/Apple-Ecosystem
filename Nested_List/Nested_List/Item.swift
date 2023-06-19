//
//  Item.swift
//  Nested_List
//
//  Created by 김진우 on 2022/12/15.
//

import SwiftUI

struct Item: Identifiable {
    
    let id = UUID()
    let title: String
    let children: [Item]?
    
}
