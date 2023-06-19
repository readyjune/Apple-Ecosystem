//
//  EmojiFlagFetching.swift
//  EmojiFlags
//
//  Created by 김진우 on 2022/10/03.
//

import Foundation

class EmojiFlagFetching: ObservableObject {
    @Published var EmojiFlagList = [EmojiFlag]()
    
    init() {
        
        let url = URL(string: "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/index.json")!
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            do {
                if let todoData = data {
                    let decodedData = try JSONDecoder().decode([EmojiFlag].self, from: todoData)
                    DispatchQueue.main.async {
                        self.EmojiFlagList = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}
