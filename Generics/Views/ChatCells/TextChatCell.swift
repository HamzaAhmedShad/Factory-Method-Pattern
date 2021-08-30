//
//  TextChatCell.swift
//  Generics
//
//  Created by alok subedi on 03/09/2021.
//

import UIKit

class TextChatCell: GenericChatCell<UILabel, String> {
    override var message: String? {
        didSet {
            bubbleView.messageView.text = message
        }
    }
    
    override func setupBubbleView() {
        bubbleView = TextChatBubbleView()
    }
}
