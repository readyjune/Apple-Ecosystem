//
//  EmojiFlag.swift
//  EmojiFlags
//
//  Created by 김진우 on 2022/10/03.
//

import Foundation

struct EmojiFlag: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case name
        case code
        case emoji
        case unicode
        case image
    }
    
    var id = UUID()
    var name: String
    var code: String
    var emoji: String
    var unicode: String
    var image: String
    
}
