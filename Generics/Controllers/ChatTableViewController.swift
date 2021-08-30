//
//  ChatTableViewController.swift
//  Generics
//
//  Created by alok subedi on 29/08/2021.
//

import UIKit

class ChatTableViewController: UITableViewController {
    let messages = [
        Message(senderName: "Name 1", message: "Message 0", image: nil),
        Message(senderName: "Name 2", message: nil, image: UIImage()),
        Message(senderName: "Name 3", message: "Message which is longer to display it in multi-line. Yes!!!! it works", image: nil),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }
    
    private func setupTableView() {
        tableView.register(ImageChatCell.self, forCellReuseIdentifier: "imageCell")
        tableView.register(TextChatCell.self, forCellReuseIdentifier: "textCell")
        
        tableView.separatorStyle = .none
        rotate180(tableView)
    }

    private func rotate180(_ view: UIView) {
        view.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if messages[indexPath.row].image == nil {
            let cell = tableView.dequeueReusableCell(withIdentifier: "textCell") as! TextChatCell
            cell.name = messages[indexPath.row].senderName
            cell.message = messages[indexPath.row].message
            
            rotate180(cell)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell") as! ImageChatCell
            cell.name = messages[indexPath.row].senderName
            cell.message = messages[indexPath.row].image
            
            rotate180(cell)
            return cell
        }
    }
}
