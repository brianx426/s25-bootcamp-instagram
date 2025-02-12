//
//  BottomToolbar.swift
//  s25-instagram
//
//  Created by Brian Liu on 2/11/25.
//

import SwiftUI
import Foundation

struct BottomToolbarView: View {
    var likes: Int
    var dms: Int
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Image(systemName: "heart")
                    .padding(.leading, 6)
                
                Text(truncateNums(from: likes))
                
                Image(systemName: "message")
                
                Text(truncateNums(from: dms))
                
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
                    .padding(.trailing, 6)
            }
            
            Text("\(likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .padding(.leading, 8)
            
        }
        
    }
    
    func truncateNums(from num: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        if num >= 1_000_000 {
            return String(format: "%.1fM", Double(num) / 1_000_000)
        } else if num >= 10_000 {
            return String(format: "%.1fK", Double(num) / 1_000)
        } else {
            return formatter.string(from: NSNumber(value: num)) ?? "\(num)"
        }
    }
    
}

#Preview {
    BottomToolbarView(likes: 456920, dms: 1111)
}
