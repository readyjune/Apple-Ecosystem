//
//  FormList.swift
//  Nested_List
//
//  Created by 김진우 on 2022/12/15.
//

import SwiftUI

struct FormList: View {
    
    @State var isProfileSectionExpanded = true
    //원래는 닫혀있어야하는데 이걸 사용하면, 처음 앱을 열 때 열린상태를 유지
    
    var body: some View {
        Form {
            Section {
                DisclosureGroup(isExpanded: $isProfileSectionExpanded) {
                    TextField("First Name", text: .constant(""))
                    TextField("Last Name", text: .constant(""))
                    TextField("Email", text: .constant(""))
                    DatePicker("Birthdate", selection:
                            .constant(Date()))
                } label: {
                    Text("Personal Information")
                }
            }
            Section {
                DisclosureGroup {
                    Toggle("Push", isOn: .constant(true))
                    Toggle("SMS", isOn: .constant(true))
                    Toggle("Email", isOn: .constant(true))
                } label: {
                    Text("Notification Preferences")
                }
            }
            
        }
    }
}

struct FormList_Previews: PreviewProvider {
    static var previews: some View {
        FormList()
    }
}
