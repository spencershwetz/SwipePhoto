//
//  SwipePhotoViewController.swift
//  SwipePhotos
//
//  Created by Asif Mimi on 13/2/24.
//

import PopBounceButton
import Shuffle_iOS

class SwipePhotoViewController: UIViewController {
    
    private let cardStack = SwipeCardStack()
    
    private let buttonStackView = ButtonStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardStack.delegate = self
        cardStack.dataSource = self
        
        configureNavigationBar()
        layoutButtonStackView()
        layoutCardStackView()
        configureBackgroundGradient()
    }
    
    private func configureNavigationBar() {
        let backButton = UIBarButtonItem(title: "Back",
                                         style: .plain,
                                         target: self,
                                         action: #selector(handleShift))
        backButton.tag = 1
        backButton.tintColor = .lightGray
        navigationItem.leftBarButtonItem = backButton
        
        let forwardButton = UIBarButtonItem(title: "Forward",
                                            style: .plain,
                                            target: self,
                                            action: #selector(handleShift))
        forwardButton.tag = 2
        forwardButton.tintColor = .lightGray
        navigationItem.rightBarButtonItem = forwardButton
        
        navigationController?.navigationBar.layer.zPosition = -1
    }
    
    private func configureBackgroundGradient() {
        let backgroundGray = UIColor(red: 244 / 255, green: 247 / 255, blue: 250 / 255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.white.cgColor, backgroundGray.cgColor]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func layoutButtonStackView() {
        
        view.addSubview(buttonStackView)
        
        buttonStackView.anchor(left: view.safeAreaLayoutGuide.leftAnchor,
                               bottom: view.safeAreaLayoutGuide.bottomAnchor,
                               right: view.safeAreaLayoutGuide.rightAnchor,
                               paddingLeft: 24,
                               paddingBottom: 12,
                               paddingRight: 24)
    }
    
    private func layoutCardStackView() {
        
        view.addSubview(cardStack)
        
        cardStack.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                         left: view.safeAreaLayoutGuide.leftAnchor,
                         bottom: buttonStackView.topAnchor,
                         right: view.safeAreaLayoutGuide.rightAnchor)
    }
    
    @objc
    private func handleShift(_ sender: UIButton) {
        cardStack.shift(withDistance: sender.tag == 1 ? -1 : 1, animated: true)
    }
}

// MARK: Data Source + Delegates

extension SwipePhotoViewController: SwipeCardStackDataSource, SwipeCardStackDelegate {
    
    func cardStack(_ cardStack: SwipeCardStack, cardForIndexAt index: Int) -> SwipeCard {
        let card = SwipeCard()
        card.footerHeight = 80
        card.swipeDirections = [.left, .up, .right]
        for direction in card.swipeDirections {
            card.setOverlay(CardOverlay(direction: direction), forDirection: direction)
        }
        
        let model = CardModelData.sampleData()[index]
        card.content = CardContentView(withImage: model.image)
        card.footer = CardFooterView(withTitle: "\(model.name), \(model.age)", subtitle: model.occupation)
        
        return card
    }
    
    func numberOfCards(in cardStack: SwipeCardStack) -> Int {
        return CardModelData.sampleData().count
    }
    
    func didSwipeAllCards(_ cardStack: SwipeCardStack) {
        print("Swiped all cards!")
    }
    
    func cardStack(_ cardStack: SwipeCardStack, didUndoCardAt index: Int, from direction: SwipeDirection) {
        print("Undo \(direction) swipe on \(CardModelData.sampleData()[index].name)")
    }
    
    func cardStack(_ cardStack: SwipeCardStack, didSwipeCardAt index: Int, with direction: SwipeDirection) {
        print("Swiped \(direction) on \(CardModelData.sampleData()[index].name)")
    }
    
    func cardStack(_ cardStack: SwipeCardStack, didSelectCardAt index: Int) {
        print("Card tapped")
    }
}
