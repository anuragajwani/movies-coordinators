//
//  Movie.swift
//  Movies-Coordinators
//
//  Created by Anurag Ajwani on 01/05/2017.
//  Copyright © 2017 example. All rights reserved.
//

import Foundation

struct Movie {
    
    let title: String
    let year: String
    let genre: [String]
    
    init(title: String, year: String, genre: [String]) {
        
        self.title = title
        self.year = year
        self.genre = genre
    }
}
