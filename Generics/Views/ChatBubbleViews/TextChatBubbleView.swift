//
//  TextChatBubbleView.swift
//  Generics
//
//  Created by alok subedi on 03/09/2021.
//

import UIKit

class TextChatBubbleView: GenericChatBubbleView<UILabel> {
    override func setupMessageView() {
        messageView.numberOfLines = 0
    }
}
