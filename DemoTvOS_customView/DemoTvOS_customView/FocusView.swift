//
//  FocusView.swift
//  DemoTvOS_customView
//
//  Created by Mobile6 on 12/29/15.
//  Copyright © 2015 Pixonsoft. All rights reserved.
//

import UIKit

class FocusView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func canBecomeFocused() -> Bool {
        return true
    }
    
    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        
        if context.previouslyFocusedView === self {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                context.previouslyFocusedView?.transform = CGAffineTransformMakeScale(1.0, 1.0)
            })
        }
        
        if context.nextFocusedView === self {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                context.nextFocusedView?.transform = CGAffineTransformMakeScale(1.2, 1.2)
            })
        }
    }
}
