//
//  ReadData.swift
//  EmojiFlags
//
//  Created by 김진우 on 2022/10/04.
//

import Foundation

class ReadData: ObservableObject {
    @Published var emojiflag = [EmojiFlag]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = URL(string: "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/index.json")
        else {
            print("Json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let emojiflag = try? JSONDecoder().decode([EmojiFlag].self, from: data!)
        self.emojiflag = emojiflag!
        
    }
}
