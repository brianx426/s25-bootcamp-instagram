//
//  ContentView.swift
//  s25-instagram
//
//  Created by Brian Liu on 2/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            PostView(pfp: Image("IMG_2435"), username: "bliu", post: Image("IMG_2394"), likes: 123456, dms: 5214, caption: "blud think he gonna win", date: "February 4")
                .padding(.bottom)
            PostView(pfp: Image("IMG_2435"), username: "bliu", post: Image("eclipse"), likes: 500123, dms: 12100, caption: "I am the eclipse", date: "February 4")
                .padding(.bottom)
            PostView(pfp: Image("IMG_2435"), username: "bliu", post: Image("lol"), likes: 201946, dms: 7900, caption: "xdd", date: "February 4")
        }
    }
}

#Preview {
    ContentView()
}
