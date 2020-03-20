//
//  HomeViewController.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var homeVM = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setComponent()
    }
    
    private func setComponent() {
        // tableview
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 104
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
        tableView.register(cellType: HomeTableViewCell.self)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeVM.students?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusable(HomeTableViewCell.self, indexPath)
        cell.student = homeVM.students?[indexPath.row]
        return cell
    }
    
    
}

extension HomeViewController: UITableViewDelegate {
    
}
