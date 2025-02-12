//
//  CaptionView.swift
//  s25-instagram
//
//  Created by Brian Liu on 2/11/25.
//

import SwiftUI


struct CaptionView: View {
    var username: String
    var caption: String
    var date: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("**\(username)** \(caption)")
                .font(.footnote)
                .padding(.leading, 6)
            Text("\(date)")
                .font(.caption)
                .foregroundColor(.secondary)
                .padding(.leading, 6)
                
        }
    }
}


#Preview {
    CaptionView(username: "bliu", caption: "test string", date: "February 11")
}
