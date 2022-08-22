//
//  TabViewView.swift
//  SwiftUI-List-Starter
//
//  Created by victor on 20/08/2022.
//

import SwiftUI

struct TabViewView: View {
    var body: some View {
        TabView {
            
            VideoDetailView(video: VideoList.topTen.first!)
                .font(.title)
                .tabItem({
                    Image(systemName: "circle")
                    Text("Steppers")
                })
                .tag(0)
            
            VideoListView()
                .font(.title)
                .tabItem({
                    Image(systemName: "moon.fill")
                    Text("Videos")
                    
                })
                .tag(1)
        }
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}
