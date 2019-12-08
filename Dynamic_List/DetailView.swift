//
//  DetailView.swift
//  Dynamic_List
//
//  Created by Afonso H Sabino on 07/12/19.
//  Copyright © 2019 Afonso H Sabino. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let power: Power
    
    var body: some View {
        VStack {
            Image(power.name.lowercased())
                .resizable()
                .scaledToFit()
            Text(power.type)
                .font(.title)
                .foregroundColor(Color(UIColor.label))
                .bold()
                .padding()
            
            Spacer()
        }.navigationBarTitle(Text(power.name), displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(power: Power(id: 0,
                                name: "SuperFire",
                                type: "Fire",
                                color: .red)
        )
    }
}
