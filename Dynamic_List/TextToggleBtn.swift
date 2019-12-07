//
//  TextToggleBtn.swift
//  Dynamic_List
//
//  Created by Afonso H Sabino on 07/12/19.
//  Copyright © 2019 Afonso H Sabino. All rights reserved.
//

import SwiftUI

struct TextToggleBtn: View {
    
    @Binding var showPowerType: Bool
    
    var body: some View {
        Button(
            action: { self.showPowerType.toggle() },
            label: { Text(self.showPowerType ? "Hide" : "Show")
                .foregroundColor(Color(UIColor.label))
        })
    }
}

//struct TextToggleBtn_Previews: PreviewProvider {
//    static var previews: some View {
//        TextToggleBtn()
//    }
//}
