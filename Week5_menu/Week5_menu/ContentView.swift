//
//  ContentView.swift
//  Week5_menu
//
//  Created by 김진우 on 2022/10/04.
//

import SwiftUI



struct ContentView: View {

    let foods = Food.allFoods()
    
    var body: some View {
        List(self.foods, id: \.rollNo) { food in
            HStack {
                
                Image(food.foodImage)
                    .resizable()
                    .frame(width:50, height:50)
                VStack(alignment: .leading) {
                    Text(food.name)
                        .font(.title)
                    Text("nee")
    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
