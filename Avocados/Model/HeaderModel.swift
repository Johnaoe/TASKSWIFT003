//
//  HeaderModel.swift
//  Avocados
//
//  Created by Jonas Narbutas on 2024-01-07.
//

import Foundation

//MARK: - HEADER MODEL

struct Header: Identifiable{
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
