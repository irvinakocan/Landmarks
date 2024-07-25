//
//  ContentView.swift
//  Landmarks
//
//  Created by Irvina Kočan on 24. 7. 2024..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
