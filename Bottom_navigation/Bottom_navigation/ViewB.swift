//
//  ViewC.swift
//  Bottom_navigation
//
//  Created by 김진우 on 2022/08/29.
//

import SwiftUI

struct ViewB: View {
    var body: some View {
        ZStack {
            Color.blue
            Image(systemName: "person.2.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }

    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
