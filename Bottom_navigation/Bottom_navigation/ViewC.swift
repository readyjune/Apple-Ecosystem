//
//  ViewC.swift
//  Bottom_navigation
//
//  Created by 김진우 on 2022/08/29.
//

import SwiftUI

struct ViewC: View {
    @State var textData = ""
    var body: some View {
        
        
        
        NavigationView {
            
            List {
                HStack(spacing: 0) {
                    Image(systemName: "cup.and.saucer")
                    VStack(alignment: .leading) {
                        Text(" Coffee").font(.largeTitle)
                        Text("$10")
                    }
                    
                }
                HStack(spacing: 0) {
                    Image(systemName: "wineglass")
                    Text(" Wine")
                    Spacer()
                    Text("$10")
                    
                }
                HStack(spacing: 0) {
                    TextField("Placeholder Text", text: $textData)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 200)
                    
                }
                HStack(spacing: 0) {
                    Image(systemName: "birthday.cake")
                    Text(" Cake")
                    Spacer()
                    Text("$50")
                    
                }
                HStack(spacing: 0) {
                    Image(systemName: "fork.knife")
                    Text(" Any food")
                    Spacer()
                    Text("$40")
                    
                }
                ForEach(0...9, id: \.self) {
                    Text("Random Food \($0)")
                }.navigationBarTitle("Detail")
                
                
            }
        }.navigationBarTitle("Food Detail")
        

    }
    
}
struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
