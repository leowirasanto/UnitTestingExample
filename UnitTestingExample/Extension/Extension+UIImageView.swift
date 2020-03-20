//
//  Extension+UIImage.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    func setImage(_ urlString: String?) {
        if let str = urlString, let url = URL(string: str) {
            getData(from: url) { data, _, error in
                guard let data = data, error == nil else { return }
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            }
        } else {
            image = UIImage(named: "img-dummy")
        }
    }

    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
