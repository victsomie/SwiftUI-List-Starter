//
//  StepperView.swift
//  SwiftUI-List-Starter
//
//  Created by victor on 20/08/2022.
//

import SwiftUI

struct StepperView: View {
    
    var body: some View {
        
//        NavigationView {
            List {
                NavigationLink("Go to detail", destination: Text("New Detail"))
                NavigationLink("Go to VideoListView", destination: VideoListView())
                NavigationLink("Go to Pickers", destination: PickersView())
                NavigationLink("Go to TabViews", destination: TabViewView())
                NavigationLink("Go to SliderView", destination: SliderView())


   
            }
            //.navigationBarTitle("Master")
            Text("Placeholder for Detail")
            
//        }
        //        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
