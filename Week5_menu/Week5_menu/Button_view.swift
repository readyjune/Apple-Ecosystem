//
//  Button.swift
//  Week5_menu
//
//  Created by 김진우 on 2022/10/04.
//

import SwiftUI

struct Button_view: View {
    var body: some View {

        HStack{
            Button(action: {
                print("B page")
            }) {
                Text("view current")
            }
            Text("<--------->")
            
            Button(action: {
                print("A page")
            }) {
                Text("scanning view")
            }
        }

        
    }
}

struct Button_view_Previews: PreviewProvider {
    static var previews: some View {
        Button_view()
    }
}
