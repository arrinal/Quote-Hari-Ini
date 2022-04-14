//
//  Quote.swift
//  Quote Hari Ini
//
//  Created by Arrinal Sholifadliq on 06/04/22.
//

import Foundation

struct Quote: Codable, Identifiable {
    var id: Int = 0
    var firebaseID: String = ""
    var quoteText: String = ""
    var author: String = ""
    var isViewed: Bool = false
}
