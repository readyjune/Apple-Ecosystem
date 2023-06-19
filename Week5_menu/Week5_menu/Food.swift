//
//  Food.swift
//  Week5_menu
//
//  Created by 김진우 on 2022/10/04.
//

import Foundation

struct Food {
    
    let name: String
    let rollNo: Int
    let foodImage: String
}

extension Food {
    static func allFoods() -> [Food] {
        return [
            Food(name: "A", rollNo: 1, foodImage: "CheeseTomato"),
            Food(name: "B", rollNo: 2, foodImage: "ChickenCheese")
        ]
        
        
    }
}
