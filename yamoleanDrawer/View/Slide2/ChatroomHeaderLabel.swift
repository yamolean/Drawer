//
//  ChatroomHeaderLabel.swift
//  yamoleanDrawer
//
//  Created by 矢守叡 on 2019/11/01.
//  Copyright © 2019 yamolean. All rights reserved.
//

import UIKit

final class ChatroomHeaderLabel: UILabel {
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.insetBy(dx: 16, dy: 0))
        
    }
    
}
