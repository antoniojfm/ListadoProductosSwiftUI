//
//  Menu.swift
//  ListadoProductos_AntonioJesus
//
//  Created by estech on 20/2/23.
//

import Foundation

struct MenuItem: Codable, Identifiable, Hashable {
    var id: UUID
    var title: String
    var price: Double
    var category: String
    var image: String
    var description: String
    var rating: Rating
}

struct Rating: Codable, Hashable {
    var rate: Double
    var count: Int
}
