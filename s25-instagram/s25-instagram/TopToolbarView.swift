//
//  TopToolbarView.swift
//  s25-instagram
//
//  Created by Brian Liu on 2/11/25.
//

import SwiftUI

struct TopToolbarView: View {
    var pfp: Image
    var username: String
    
    var body: some View {
        HStack {
            pfp
                .resizable()
                .frame(width: 30, height: 30)
                .clipShape(.circle)
                .padding(.leading, 6)
            Text(username)
                .font(.subheadline)
                .fontWeight(.bold)
            
            Spacer()
            Image(systemName: "ellipsis")
                .padding(.trailing, 6)
            
        }
    }
}

#Preview {
    TopToolbarView(pfp: Image("IMG_2435"), username: "bliu")
}
