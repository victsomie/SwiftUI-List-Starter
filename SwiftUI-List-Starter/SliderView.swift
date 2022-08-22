//
//  SliderView.swift
//  SwiftUI-List-Starter
//
//  Created by victor on 22/08/2022.
//

import SwiftUI

struct SliderView: View {
    
    @State var progress: Float = 0
    
    @State private var celsius: Double = 0
    
    
    var body: some View {
        
        //        Slider(value: $progress, from: 0.0, through: 100.0, by: 5.0)
        
        //        HStack {
        //            Image(systemName: "sun.min")
        //            Slider(value: $progress, from: 0.0, through: 100.0, by: 5.0)
        //            Image(systemName: "sun.max.fill")
        //
        //
        //        }.padding()
        
        VStack {
            Image(systemName: "sun.min")
            
            Slider(value: $celsius, in: -100...100)
            Image(systemName: "sun.max.fill")
            
            Text("\(celsius, specifier: "%.1f") Celsius is \(celsius * 9 / 5 + 32, specifier: "%.1f") Fahrenheit")
        }.padding()
        
        VStack {

            Text ("\n\nNew Slider setting")
            Slider(value: $celsius, in: -100...120)
            
        }.padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
