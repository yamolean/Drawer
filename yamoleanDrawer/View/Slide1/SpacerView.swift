//
//  SpacerView.swift
//  yamoleanDrawer
//
//  Created by 矢守叡 on 2019/10/31.
//  Copyright © 2019 yamolean. All rights reserved.
//

import UIKit

final class SpacerView: UIView {
    
    let space: CGFloat
    
    override var intrinsicContentSize: CGSize {
        return .init(width: space, height: space)
    }
    
    init(space: CGFloat) {
        self.space = space
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
