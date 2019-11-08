//
//  SearchContainerView.swift
//  yamoleanDrawer
//
//  Created by 矢守叡 on 2019/11/01.
//  Copyright © 2019 yamolean. All rights reserved.
//

import UIKit

final class SearchContainerView: UIView {

    let searchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.searchBarStyle = .minimal
        sb.placeholder = "会話を移動"
        return sb
    }()
    
    let searchImageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "profile"))
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 5
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).textColor = .white
        
        addSubview(searchBar)
        addSubview(searchImageView)
        
        searchImageView.anchor(top: nil, leading: safeAreaLayoutGuide.leadingAnchor, bottom: bottomAnchor, trailing: nil, padding: .init(top: 0, left: 10, bottom: 10, right: 0), size: .init(width: 44, height: 44))
        
        searchBar.anchor(top: nil, leading: searchImageView.trailingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 4, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }

}
