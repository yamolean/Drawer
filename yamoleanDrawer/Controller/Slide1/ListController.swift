//
//  ListController.swift
//  yamoleanDrawer
//
//  Created by 矢守叡 on 2019/11/01.
//  Copyright © 2019 yamolean. All rights reserved.
//

import UIKit

final class ListController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Lists"
        navigationController?.navigationBar.prefersLargeTitles = true

        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Lists"
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.frame = view.frame
        label.textAlignment = .center
        
        view.addSubview(label)
        
    }
}
