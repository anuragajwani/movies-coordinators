//
//  MoviesViewCoordinator.swift
//  Movies-Coordinators
//
//  Created by Anurag Ajwani on 07/05/2017.
//  Copyright © 2017 example. All rights reserved.
//

import Foundation
import UIKit

final class MoviesViewCoordinator {
    
    // MARK: - Instance dependencies
    
    private let navigationController: UINavigationController
    
    // MARK: - Instance state
    
    private var viewController: MoviesViewController!
    
    // MARK: - Initializers
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Coordinator functions
    
    func start() {
        
        self.viewController = MoviesViewController()
        
        self.fetchMovies { [unowned self] movies in
            let viewModel = self.convert(movies: movies)
            self.viewController.set(viewModel: viewModel)
        }
        
        self.navigationController.pushViewController(self.viewController, animated: false)
    }
    
    // MARK: - Helper functions
    
    private func fetchMovies(onSuccess: ([Movie]) -> Void) {
        let exampleMovie = Movie(title: "Movie title", year: "2017", genre: ["Action", "Adventure"])
        onSuccess([exampleMovie])
    }
    
    private func convert(movies: [Movie]) -> MoviesViewModel {
        
        let movieCellViewModels = movies.map { movie in
            
            MovieCellViewModel(
                textLabel: "\(movie.title) (\(movie.year))",
                detailTextLabel: movie.genre.joined(separator: ",")
            )
        }
        
        return MoviesViewModel(movies: movieCellViewModels)
    }
}
