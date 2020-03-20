//
//  ProfileViewController.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var fullnameLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerTopConstraint: NSLayoutConstraint!
    
    let profileVM = ProfileViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setComponent()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNavigation("Profile")
    }
    
    private func setComponent() {
        // tableview
        tableView.dataSource = self
        tableView.register(cellType: HomeTableViewCell.self)
        tableView.estimatedRowHeight = 104
        tableView.rowHeight = UITableView.automaticDimension
        tableView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 16, right: 0)
        tableView.separatorStyle = .none
        
        profileImg.round(profileImg.bounds.width / 2)
        
        //binding data
        profileImg.setImage(profileVM.profile?.ppUrl)
        fullnameLbl.text = profileVM.profile?.fullName ?? ""
    }
}

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileVM.friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusable(HomeTableViewCell.self, indexPath)
        cell.student = profileVM.friends[indexPath.row]
        return cell
    }
}

extension ProfileViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // apply parallax here
    }
}
