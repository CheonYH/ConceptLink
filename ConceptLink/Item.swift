//
//  Item.swift
//  ConceptLink
//
//  Created by 천 on 5/3/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
