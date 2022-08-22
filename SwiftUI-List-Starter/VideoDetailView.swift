//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by victor on 18/08/2022.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    
    var body: some View {
        
        VStack (spacing: 20){
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(6)
                .frame(width: 200)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            
            HStack (spacing: 40)  {
                
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                //.minimumScaleFactor(0.5)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text (video.description)
                .font(.body)
                .padding()
                .multilineTextAlignment(.center)
            
            Spacer()
            
            // Watch now button
            Link (destination: video.url, label: {
                
                ButtonView(title: "WATCH NOW")
            })
            
            NavigationLink(destination: StepperView()) {
                Label ("Stepper view", image: "swift")
                
            }
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}

struct ButtonView: View {
    
    var title: String
    
    var body: some View {
        Text (title)
            .bold()
            .font(.title2)
            .padding(8)
            .frame(width: 280)
            .background(Color.red)
            .cornerRadius(4.0)
            .foregroundColor(.white)
    }
}

