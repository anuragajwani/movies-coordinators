//
//  MoviesViewModel.swift
//  Movies-Coordinators
//
//  Created by Anurag Ajwani on 12/04/2017.
//  Copyright © 2017 example. All rights reserved.
//

import Foundation

struct MoviesViewModel {
    
    let movies: [MovieCellViewModel]
    
    init(movies: [MovieCellViewModel]) {
        self.movies = movies
    }
}

struct MovieCellViewModel {
    
    let textLabel: String
    let detailTextLabel: String
    
    init(
        textLabel: String,
        detailTextLabel: String
    ) {
        self.textLabel = textLabel
        self.detailTextLabel = detailTextLabel
    }
}
