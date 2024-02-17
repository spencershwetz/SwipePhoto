//
//  BounceButton.swift
//  SwipePhotos
//
//  Created by Asif Mimi on 15/2/24.
//

import PopBounceButton

class BounceButton: PopBounceButton {
    
    override init() {
        super.init()
        
        adjustsImageWhenHighlighted = false
        backgroundColor = .white
        layer.masksToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = frame.width / 2
    }
}
