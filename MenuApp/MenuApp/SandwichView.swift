//
//  SandwichView.swift
//  Assignment1
//
//  Created by 김진우 on 2022/09/27.
//

import SwiftUI

@available(iOS 16.0, *)
struct SandwichView: View {
    var sandwich: Sandwich
    
    @State var num_sandwich = 0
    @State var num_onion = 0
    @State var num_pickle = 0
    @State var num_ham = 0
    
    @State private var cheese_selection = "No cheese"
    let cheeses = ["No cheese", "Mozzarella", "Cheddar", "Feta", "Brie", "Parmesan"]
    
    @State private var sauce_selection = "No sauce"
    let sauces = ["No sauce", "BBQ", "Garlic", "Sriracha", "Tomtao"]
    
    @State private var size_selection = "Regular"
    let sizes = ["Regular", "Large", "Jumbo"]
    
    var body: some View {
        ScrollView {
            
            AsyncImage(url: URL(string: sandwich.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)

            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(width: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(sandwich.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(sandwich.description)
                        .bold()
                }
            }
            
            Section {
                VStack {
                    Stepper("How many sandwich do you want", onIncrement: {
                        num_sandwich += 1
                    }, onDecrement: {
                        if (num_sandwich != 0) {
                            num_sandwich -= 1
                        }
                    })
                    .bold()
        
                    Text("I want \(num_sandwich) number of sandwich")
                        .bold()
                }
                VStack {
                    Stepper("How many onion do you want", onIncrement: {
                        num_onion += 1
                    }, onDecrement: {
                        if (num_onion != 0) {
                            num_onion -= 1
                        }
                    })
                    .bold()
        
                    Text("I want \(num_onion) number of onion")
                        .bold()
                }
                VStack {
                    Stepper("How many pickle do you want", onIncrement: {
                        num_pickle += 1
                    }, onDecrement: {
                        if (num_pickle != 0) {
                            num_pickle -= 1
                        }
                    })
                    .bold()
        
                    Text("I want \(num_pickle) number of pickle")
                        .bold()
                }
                VStack {
                    Stepper("How many ham do you want", onIncrement: {
                        num_ham += 1
                    }, onDecrement: {
                        if (num_ham != 0) {
                            num_ham -= 1
                        }
                    })
                    .bold()
        
                    Text("I want \(num_ham) number of ham")
                        .bold()
                }
                
            }
            
            Section {
                HStack {
                    Text("Selected cheese:")
                        .bold()
                    Spacer()
                    Picker("Select a cheese", selection: $cheese_selection) {
                        ForEach(cheeses, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                }
                HStack {
                    Text("Selected sauce:")
                        .bold()
                    Spacer()
                    Picker("Select a sauce", selection: $sauce_selection) {
                        ForEach(sauces, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                }
                HStack {
                    Text("Selected size:")
                        .bold()
                    Spacer()
                    Picker("Select a size", selection: $size_selection) {
                        ForEach(sizes, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                }
            }
        }
      //  .ignoresSafeArea(.container, edges: .top)
     
        //button

    }

}

@available(iOS 16.0, *)
struct SandwichView_Previews: PreviewProvider {
    static var previews: some View {
        SandwichView(sandwich: Sandwich.all[0])
    }
}
