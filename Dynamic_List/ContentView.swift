//
//  ContentView.swift
//  Dynamic_List
//
//  Created by Afonso H Sabino on 05/12/19.
//  Copyright © 2019 Afonso H Sabino. All rights reserved.
//

import SwiftUI

struct Power: Identifiable {
    //Protocol properties
    var id: Int
    
    //Model properties
    let name: String
    let type: String
    let color: Color
}

struct ContentView: View {
    
    //Building Power Array
    @State var powerList = [Power(id: 0, name: "SuperFire", type: "Fire", color: .red),
                            Power(id: 1, name: "SuperWater", type: "Water", color: .blue),
                            Power(id: 2, name: "SuperLand", type: "Land", color: .green),
                            Power(id: 3, name: "SuperEletric", type: "Eletric", color: .yellow)]
    
    @State var showPowerType = true
    
    var body: some View {
        NavigationView {
            //Building a dynamic List based on Array
            List(powerList) { power in
                HStack {
                    Text(power.name)
                    if self.showPowerType {
                        Text(power.type)
                            .foregroundColor(power.color)
                    }
                }.padding(.horizontal)
            }
                //Navigation Modifiers
                .navigationBarTitle(Text("Super Powers"))
                .navigationBarItems(
                    leading: TextToggleBtn(showPowerType: $showPowerType),
                    trailing: Button(
                        action: addPower,
                        label: { Text("Add")
                            .foregroundColor(Color(UIColor.label))
                    })
            )
        }
    }
    
    func addPower() {
        if let randomPower = powerList.randomElement() {
            powerList.append(randomPower)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
