//
//  ViewA.swift
//  Bottom_navigation
//
//  Created by 김진우 on 2022/08/29.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        ZStack {
            Color.red
            Image(systemName: "phone.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }

    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
