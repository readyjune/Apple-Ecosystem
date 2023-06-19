//
//  ContentView.swift
//  EmojiFlags
//
//  Created by 김진우 on 2022/10/03.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var datas = ReadData()

    var body: some View {
        List(datas.emojiflag) {emoji in
            
            VStack(alignment: .leading) {
                Text(emoji.name)
                    .font(.title)
                Text(emoji.code)
                Text(emoji.emoji)
                Text(emoji.image)
                Text(emoji.unicode)
                
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
