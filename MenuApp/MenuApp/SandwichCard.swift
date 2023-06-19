//
//  SandwichCard.swift
//  Assignment1
//
//  Created by 김진우 on 2022/09/27.
//

import SwiftUI

struct SandwichCard: View {
    var sandwich: Sandwich
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: sandwich.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(sandwich.name)
                            .font(.headline)
                            .foregroundColor(.black)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)
                            .frame(maxWidth: 136)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }

        }
        .frame(width:160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct SandwichCard_Previews: PreviewProvider {
    static var previews: some View {
        SandwichCard(sandwich: Sandwich.all[0])
    }
}
