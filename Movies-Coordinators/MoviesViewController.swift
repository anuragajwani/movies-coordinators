//
//  MoviesViewController.swift
//  Movies-Coordinators
//
//  Created by Anurag Ajwani on 27/03/2017.
//  Copyright © 2017 example. All rights reserved.
//

import UIKit

final class MoviesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: MoviesViewModel?
    private var dataSource: MoviesTableViewDataSource!
    
    init() {
        super.init(nibName: "MoviesViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MovieCell")
        
        self.dataSource = MoviesTableViewDataSource()
        self.tableView.dataSource = self.dataSource
        
        if let viewModel = self.viewModel {
            self.bind(viewModel: viewModel)
        }
    }
    
    
    func set(viewModel: MoviesViewModel) {
        
        self.viewModel = viewModel
        
        if self.isViewLoaded {
            
            self.bind(viewModel: viewModel)
        }
    }
    
    private func bind(viewModel: MoviesViewModel) {
        self.dataSource.viewModels = viewModel.movies
        self.tableView.reloadData()
    }
}
