//
//  PickersView.swift
//  SwiftUI-List-Starter
//
//  Created by victor on 20/08/2022.
//

import SwiftUI

struct PickersView: View {
    
    
    @State var quantity: Int = 0
    @State var selection: Int = 0
    
    @State var mapChoioce = 0
    
    var settings = ["Map", "Transit", "Satellite"]
    
    
    var colors = ["Red", "Green", "Blue", "Tartan"]
    
    @State private var selectedColor = "Red"
    
    
    
    @State var selectedDate = Date()
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -30, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 0, to: Date())!
        return min...max
    }
    
    var body: some View {
        
        Stepper(value: $quantity, in: 0...10, label: { Text("Quantity \(quantity)")})
        
        
        Text ("Selection value \(selection) || \(mapChoioce)" )
        
        Stepper(onIncrement: {
            self.quantity += 1
        }, onDecrement: {
            self.quantity -= 1
        }, label: { Text("Quantity \(quantity)") })
        
        
        Stepper(value: $quantity, in: 0...10, step: 2) {
            Text("Quantity \(quantity)")
        }
        
        Form {
            Section {
                Picker(selection: $selection, label: Text("Picker Name")
                       , content: {
                    Text("Value 1").tag(0)
                    Text("Value 2").tag(1)
                    Text("Value 3").tag(2)
                    Text("Value 4").tag(3)
                })
                
            }}
        
        Text("You selected: \(selection)")
        
        Picker("Please choose a color", selection: $selectedColor) {
            ForEach(colors, id: \.self) {
                Text($0)
            }
        }
        Text("You selected: \(selectedColor)")
        
        
        
        //        }
        
        
        Picker("Options", selection: $mapChoioce) {
            ForEach(0 ..< settings.count) { index in
                Text(self.settings[index])
                    .tag(index)
            }
            
        }.pickerStyle(SegmentedPickerStyle())
        
        //
        //        Form {
        //               Section {
        //                   DatePicker(
        //                       selection: $selectedDate,
        //                       in: dateClosedRange,
        //                       displayedComponents: .date,
        //                       label: { Text("Due Date") }
        //                   )
        //               }
        //           }
        
    }
    
}


struct PickersView_Previews: PreviewProvider {
    static var previews: some View {
        PickersView()
    }
}
