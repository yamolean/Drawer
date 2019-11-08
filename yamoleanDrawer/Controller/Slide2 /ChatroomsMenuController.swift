//
//  ChatroomsMenuController.swift
//  yamoleanDrawer
//
//  Created by 矢守叡 on 2019/11/01.
//  Copyright © 2019 yamolean. All rights reserved.
//

//slack

import UIKit

final class ChatroomsMenuController: UITableViewController {
    
    let chatroomGroups = [
        
        ["general","introductions"],
        ["jobs"],
        ["yamolean 0","yamolean 1","yamolean 2","yamolean 3","yamolean 4"]
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.separatorStyle = .none
        tableView.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.2078431373, blue: 0.2862745098, alpha: 1)
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "UN Reads" : section == 1 ? "Channels" : "Direct Messages"
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let label = ChatroomHeaderLabel()
        let text = section == 0 ? "UN Reads" : section == 1 ? "Channels" : "Direct Messages"
        label.text = text
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        return label
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return chatroomGroups.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatroomGroups[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = ChatroomMenuCell(style: .default, reuseIdentifier: nil)
        let text = chatroomGroups[indexPath.section][indexPath.row]
        cell.textLabel?.text = text
        cell.backgroundColor = .clear
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
        let attributedText = NSMutableAttributedString(string: "#  ", attributes: [.foregroundColor:  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), .font: UIFont.systemFont(ofSize: 18, weight: .regular)])
        attributedText.append(NSAttributedString(string: text, attributes: [.foregroundColor: UIColor.white]))
        cell.textLabel?.attributedText = attributedText
        
        return cell
        
    }
    
}
