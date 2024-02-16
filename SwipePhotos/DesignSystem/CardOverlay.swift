//
//  CardOverlay.swift
//  SwipePhotos
//
//  Created by Asif Mimi on 15/2/24.
//

import Shuffle_iOS
import UIKit

class CardOverlay: UIView {
    
    init(direction: SwipeDirection) {
        super.init(frame: .zero)
        switch direction {
        case .left:
            createLeftOverlay()
        case .up:
            createUpOverlay()
        case .right:
            createRightOverlay()
        default:
            break
        }
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    private func createLeftOverlay() {
        let leftTextView = CardOverlayLabelView(withTitle: "NOPE",
                                                      color: .sampleRed,
                                                      rotation: CGFloat.pi / 10)
        addSubview(leftTextView)
        leftTextView.anchor(top: topAnchor,
                            right: rightAnchor,
                            paddingTop: 30,
                            paddingRight: 14)
    }
    
    private func createUpOverlay() {
        let upTextView = CardOverlayLabelView(withTitle: "LOVE",
                                                    color: .sampleBlue,
                                                    rotation: -CGFloat.pi / 20)
        addSubview(upTextView)
        upTextView.anchor(bottom: bottomAnchor, paddingBottom: 20)
        upTextView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    private func createRightOverlay() {
        let rightTextView = CardOverlayLabelView(withTitle: "LIKE",
                                                       color: .sampleGreen,
                                                       rotation: -CGFloat.pi / 10)
        addSubview(rightTextView)
        rightTextView.anchor(top: topAnchor,
                             left: leftAnchor,
                             paddingTop: 26,
                             paddingLeft: 14)
    }
}
