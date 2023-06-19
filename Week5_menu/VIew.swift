//
//  VIew.swift
//  Week5_menu
//
//  Created by 김진우 on 2022/10/04.
//

import SwiftUI

struct VIew: View {
    var body: some View {
        VStack(alignment: .leading){
            Image("CheeseTomato")
                .resizable()
                .frame(width:200, height:200)
        
            Text("Purpsoe of this VIew")
                .bold()
            Text(" ")
            Text("doingsomething in this here for purpose")
            
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        
        
    }
}

struct VIew_Previews: PreviewProvider {
    static var previews: some View {
        VIew()
    }
}
