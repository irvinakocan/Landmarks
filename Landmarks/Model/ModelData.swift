//
//  ModelData.swift
//  Landmarks
//
//  Created by Irvina Kočan on 24. 7. 2024..
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let url = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find \(filename) in the main bundle.")
    }
    
    do {
        data = try Data(contentsOf: url)
    }
    catch {
        fatalError("Could not load \(filename) from the main bundle:\n\(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    }
    catch {
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")
    }
}
