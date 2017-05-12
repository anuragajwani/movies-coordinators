//
//  MoviesTableViewDataSource.swift
//  Movies-Coordinators
//
//  Created by Anurag Ajwani on 06/05/2017.
//  Copyright © 2017 example. All rights reserved.
//

import Foundation
import UIKit

final class MoviesTableViewDataSource: NSObject, UITableViewDataSource {
    
    var viewModels: [MovieCellViewModel] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellViewModel = viewModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")!
        cell.textLabel?.text = cellViewModel.textLabel
        cell.detailTextLabel?.text = cellViewModel.detailTextLabel
        return cell
    }
}
