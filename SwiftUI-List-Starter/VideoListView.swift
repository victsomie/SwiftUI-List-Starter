//
//  VideoListView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct VideoListView: View {
    
    var videos:  [Video] = VideoList.topTen
    
    var body: some View {
        
        NavigationView {
            //List(0 ..< 20) { item in
            List(videos, id: \.id) { video in
                
                NavigationLink(destination: VideoDetailView(video: video), label: {
                   
                    VideoCell (video: video)
                })
            }
            .navigationTitle("Sean's Top 10")
        }        
    }
}


struct VideoCell :  View {
    
    var video: Video
    
    var body: some View {
        
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("\(video.title)")
                    .fontWeight(.light)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                
                Text ("\(video.id)")
                    .font(.system(size: 6, weight: .bold))
                    .fontWeight(.ultraLight)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
