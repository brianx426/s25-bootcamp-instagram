//
//  PostView.swift
//  s25-instagram
//
//  Created by Brian Liu on 2/4/25.
//

import SwiftUI

struct PostView: View {
    var pfp: Image
    var username: String
    var post: Image
    var likes: Int
    var dms: Int
    var caption: String
    var date: String
    
    var body: some View {
        VStack(alignment: .leading) {
            TopToolbarView(pfp: pfp, username: username)
            post
                .resizable()
                .scaledToFit()
            BottomToolbarView(likes: likes, dms: dms)
            CaptionView(username: username, caption: caption, date: date)
        }
    }
//    var body: some View {
//        VStack(alignment: .leading, spacing: 4) {
//            HStack() {
//                Image("IMG_2435")
//                    .resizable()
//                    .frame(width: 30, height: 30)
//                    .clipShape(.circle)
//                    .padding(.leading, 6)
//                Text("bliu")
//                    .font(.subheadline)
//                    .fontWeight(.bold)
//                Spacer()
//                Image(systemName: "ellipsis")
//                    .padding(.trailing, 6)
//                
//            }
//            
//            Image("IMG_2394")
//                .resizable()
//                .scaledToFit()
//            
//            HStack(spacing: 16) {
//                Image(systemName: "heart")
//                    .padding(.leading, 6)
//                Image(systemName: "message")
//                Image(systemName: "paperplane")
//                Spacer()
//                Image(systemName: "bookmark")
//                    .padding(.trailing, 6)
//            }
//            
//            Text("456,920 likes")
//                .font(.footnote)
//                .fontWeight(.semibold)
//                .padding(.leading, 6)
//            Text("**bliu** blud think he gonna win")
//                .font(.footnote)
//                .padding(.leading, 6)
//            Text("February 4")
//                .font(.caption)
//                .foregroundColor(.secondary)
//                .padding(.leading, 6)
//        }
//        
//    }
}

#Preview {
    PostView(pfp: Image("IMG_2435"), username: "bliu", post: Image("IMG_2394"), likes: 123456, dms: 11234, caption: "blud think he gonna win", date: "February 4")
}
