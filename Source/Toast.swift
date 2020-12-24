//
//  Toast.swift
//  Floaters
//
//  Created by NAVEEN MADHAN on 12/24/20.
//  Copyright © 2020 twentyone24. All rights reserved.
//

import SwiftUI

struct Toast: View {
    @Environment(\.colorScheme) var colorScheme
    var image: String?
    var title: String
    var subtitle: String?
    
    var body: some View {
        HStack(spacing: 16) {
            if image != nil {
                Image(systemName: image!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
            }
            
            VStack(alignment: .center) {
                Text(title)
                    .lineLimit(1)
                    .font(.headline)
                
                if subtitle != nil {
                    Text(subtitle!)
                        .lineLimit(1)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding(image == nil ? .horizontal : .trailing)
        }
        .padding(.horizontal)
        .frame(height: 56)
        .background(Color(colorScheme == .dark ? UIColor.secondarySystemBackground : UIColor.systemBackground))
        .cornerRadius(28)
        .shadow(color: Color(UIColor.black.withAlphaComponent(0.08)), radius: 8, x: 0, y: 4)
    }
}
