//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Irvina Kočan on 24. 7. 2024..
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter({ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        })
    }
    
    var body: some View {
        NavigationSplitView {
            
            List {
                
                Toggle(isOn: $showFavoritesOnly,
                       label: {
                    Text("Show favorites")
                })
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: {
                        LandmarkDetail(landmark: landmark)
                    }, label: {
                        LandmarkRow(landmark: landmark)
                    })
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark.")
        }
    }
}

#Preview {
    LandmarkList()
}
