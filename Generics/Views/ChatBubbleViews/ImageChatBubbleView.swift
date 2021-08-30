//
//  ImageChatBubbleView.swift
//  Generics
//
//  Created by alok subedi on 03/09/2021.
//

import UIKit

class ImageChatBubbleView: GenericChatBubbleView<UIImageView> {
    override func setupMessageView() {
        messageView.backgroundColor = .magenta
        messageView.layer.cornerRadius = 10
        setupMessageViewSize()
    }
    
    private func setupMessageViewSize() {
        messageView.widthAnchor.constraint(equalToConstant: 250 - 16).isActive = true
        messageView.heightAnchor.constraint(equalTo: messageView.widthAnchor, multiplier: 3/2).isActive = true
    }
}
