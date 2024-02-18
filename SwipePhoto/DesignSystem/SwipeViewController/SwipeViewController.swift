//
//  SwipeViewController.swift
//  SwipePhoto
//
//  Created by Asif Mimi on 19/2/24.
//

import UIKit

class SwipeViewController: UIViewController {

    var leftViewController: UIViewController!
    var rightViewController: UIViewController!
    var panGestureRecognizer: UIPanGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize your view controllers
        leftViewController = UIViewController()
        leftViewController.view.backgroundColor = .green

        rightViewController = UIViewController()
        rightViewController.view.backgroundColor = .blue

        // Add the left view controller
        addChild(leftViewController)
        view.addSubview(leftViewController.view)
        leftViewController.didMove(toParent: self)

        // Add the right view controller
        addChild(rightViewController)
        view.addSubview(rightViewController.view)
        rightViewController.didMove(toParent: self)

        // Position the view controllers' views side by side
        leftViewController.view.frame = CGRect(x: 0, y: 0,
                                              width: view.bounds.width,
                                              height: view.bounds.height)

        rightViewController.view.frame = CGRect(x: view.bounds.width, y: 0,
                                               width: view.bounds.width,
                                               height: view.bounds.height)

        // Add pan gesture for swipe
        panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        view.addGestureRecognizer(panGestureRecognizer)
    }

    @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)

        switch gesture.state {
        case .changed:
            // Move the view controllers based on the pan gesture
            leftViewController.view.frame.origin.x += translation.x
            rightViewController.view.frame.origin.x += translation.x

            // Reset the translation to avoid accumulation
            gesture.setTranslation(.zero, in: view)

        case .ended:
            // Determine whether to show the left or right view controller based on the final position
            let showLeftViewController = translation.x > 0

            // Animate to the final position
            UIView.animate(withDuration: 0.3) {
                if showLeftViewController {
                    self.leftViewController.view.frame.origin.x = 0
                    self.rightViewController.view.frame.origin.x = self.view.bounds.width
                } else {
                    self.leftViewController.view.frame.origin.x = -self.view.bounds.width
                    self.rightViewController.view.frame.origin.x = 0
                }
            }

        default:
            break
        }
    }
}
