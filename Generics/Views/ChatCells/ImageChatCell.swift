//
//  ImageChatCell.swift
//  Generics
//
//  Created by alok subedi on 03/09/2021.
//

import UIKit

class ImageChatCell: GenericChatCell<UIImageView, UIImage> {
    override var message: UIImage? {
        didSet {
            bubbleView.messageView.image = message
        }
    }
    
    override func setupBubbleView() {
        bubbleView = ImageChatBubbleView()
    }
}
