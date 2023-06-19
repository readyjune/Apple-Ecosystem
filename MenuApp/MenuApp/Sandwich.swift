//
//  Sandwich.swift
//  Assignment1
//
//  Created by 김진우 on 2022/09/27.
//

import Foundation

struct Sandwich: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    
}

extension Sandwich {
    static let all: [Sandwich] = [
        
    Sandwich(name: "BuffaloChicken", image: "https://www.subway.com/ns/images/menu/AUS/ENG/Buffalo_Chicken_Six_Inch_234x140.png", description: "Best sellor of this year"),
    Sandwich(name: "BLT", image: "https://www.subway.com/ns/images/menu/AUS/ENG/BLT_6_inch_WEB-SML.jpg", description: "Simple but tasty"),
    Sandwich(name: "Chicken Teriyaki", image: "https://www.subway.com/ns/images/menu/AUS/ENG/Chicken_Teriyaki_Six_Inch_234x140.jpg", description: "Japanese style sauce"),
    Sandwich(name: "Roast Beef", image: "https://www.subway.com/ns/images/menu/AUS/ENG/Carved_Beef_234x140.jpg", description: "mouth melting beef"),
    Sandwich(name: "Meatball Melt", image: "https://www.subway.com/ns/images/menu/AUS/ENG/Meatball_Melt_Six_Inch_234x140.jpg", description: "traditional meatball"),
    Sandwich(name: "Pizza Melt", image: "https://www.subway.com/ns/images/menu/AUS/ENG/Pizza_Six_Inch_234x140.jpg", description: "who don't love pizza flavour"),
    Sandwich(name: "Steak Melt", image: "https://www.subway.com/ns/images/menu/AUS/ENG/Chipotle_Steak_Melt_Six_Inch_234x140.jpg", description: "very soft beef"),
    Sandwich(name: "Turkey", image: "https://www.subway.com/ns/images/menu/AUS/ENG/Carved_Turkey_new_Six_Inch_234x140.jpg", description: "turkish style"),
    Sandwich(name: "Veggie Patty", image: "https://www.subway.com/ns/images/menu/AUS/ENG/Veggie_Patty_Six_Inch_234x140.jpg", description: "Full of vegetable"),
    Sandwich(name: "Tuna & Mayo", image: "https://www.subway.com/ns/images/menu/AUS/ENG/Tuna_Mayo_Six_Inch_234x140.jpg", description: "Best combination")
    
    ]
}
