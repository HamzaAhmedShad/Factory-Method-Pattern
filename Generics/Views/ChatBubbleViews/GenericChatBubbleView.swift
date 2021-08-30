//
//  GenericChatBubbleView.swift
//  Generics
//
//  Created by alok subedi on 29/08/2021.
//

import UIKit

class GenericChatBubbleView<MessageView: UIView>: UIView {
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return label
    }()
    
    var messageView = MessageView()
    
    let bubbleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 20
        return view
    }()
    
    convenience init() {
        self.init(frame: .zero)
        
        setupMessageView()
        addViews()
    }
    
    func setupMessageView() { }
    
    private func addViews() {
        addSubview(bubbleView)
        [nameLabel, messageView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            bubbleView.addSubview($0)
        }
        addConstraints()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            bubbleView.topAnchor.constraint(equalTo: topAnchor),
            bubbleView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bubbleView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bubbleView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
            
            nameLabel.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: bubbleView.leadingAnchor, constant: 14),
            
            messageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            messageView.leadingAnchor.constraint(equalTo: bubbleView.leadingAnchor, constant: 8),
            messageView.trailingAnchor.constraint(equalTo: bubbleView.trailingAnchor, constant: -8),
            messageView.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -8),
        ])
    }
}
