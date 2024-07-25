//
//  CircleImage.swift
//  Landmarks
//
//  Created by Irvina Kočan on 24. 7. 2024..
//

import SwiftUI

struct CircleImage: View {
    
    var landmark: Landmark
    
    var body: some View {
        landmark.image
            .clipShape(.circle)
            .overlay(content: {
                Circle().stroke(.white, lineWidth: 4)
            })
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(landmark: ModelData().landmarks[0])
}
