//
//  MapView.swift
//  Landmarks
//
//  Created by Irvina Kočan on 24. 7. 2024..
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: ModelData().landmarks[0].locationCoordinate)
}
