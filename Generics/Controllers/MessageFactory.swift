//
//  MessageFactory.swift
//  Generics
//
//  Created by BS1101 on 3/10/23.
//

import UIKit

protocol ChatCellFactory{
    func createCell(for message:Message, dequeueingTabelView tableView: UITableView) -> UITableViewCell
}

class MasterChatCellFactory:ChatCellFactory{
    func createCell(for message: Message, dequeueingTabelView tableView: UITableView) -> UITableViewCell {
        if(message.image == nil){
            return TextChatCellFactory().createCell(for: message, dequeueingTabelView: tableView)
        }
        else{
            return ImageChatCellFactory().createCell(for: message, dequeueingTabelView: tableView)
        }
    }
}

class TextChatCellFactory:ChatCellFactory{
    func createCell(for message: Message, dequeueingTabelView tableView: UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "textCell") as! TextChatCell
        cell.name = message.senderName
        cell.message = message.message
        return cell
    }
}

class ImageChatCellFactory:ChatCellFactory{
    func createCell(for message: Message, dequeueingTabelView tableView: UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell") as! ImageChatCell
        cell.name = message.senderName
        cell.message = message.image
        return cell
    }
}
