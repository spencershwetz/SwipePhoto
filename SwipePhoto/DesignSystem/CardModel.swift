//
//  CardModel.swift
//  SwipePhotos
//
//  Created by Asif Mimi on 15/2/24.
//

import UIKit

struct CardModel {
    let name: String
    let age: Int
    let occupation: String?
    let image: UIImage?
}

struct CardModelData {
    static func sampleData() -> [CardModel] {
        
        let card1 = CardModel(name: "John Doe", age: 30, occupation: "Software Engineer", image: UIImage(named: "pessoa-1"))
        let card2 = CardModel(name: "Jane Smith", age: 25, occupation: "Graphic Designer", image: UIImage(named: "pessoa-2"))
        let card3 = CardModel(name: "Bob Johnson", age: 35, occupation: nil, image: UIImage(named: "pessoa-3"))
        let card4 = CardModel(name: "Alice Brown", age: 28, occupation: "Product Manager", image: UIImage(named: "pessoa-4"))
        let card5 = CardModel(name: "Charlie Wilson", age: 40, occupation: "Doctor", image: UIImage(named: "pessoa-5"))
        let card6 = CardModel(name: "Eva Davis", age: 32, occupation: "Teacher", image: UIImage(named: "pessoa-6"))
        let card7 = CardModel(name: "Frank White", age: 45, occupation: "Architect", image: UIImage(named: "pessoa-7"))
        let card8 = CardModel(name: "Grace Turner", age: 29, occupation: "Marketing Specialist", image: UIImage(named: "pessoa-8"))
        let card9 = CardModel(name: "Harry Miller", age: 38, occupation: "Accountant", image: UIImage(named: "pessoa-9"))
        let card10 = CardModel(name: "Ivy Carter", age: 27, occupation: "Artist", image: UIImage(named: "pessoa-10"))
        let card11 = CardModel(name: "Jack Anderson", age: 33, occupation: "Fitness Trainer", image: UIImage(named: "pessoa-11"))
        let card12 = CardModel(name: "Kim Harris", age: 36, occupation: "Event Planner", image: UIImage(named: "pessoa-12"))
        let card13 = CardModel(name: "Leo Clark", age: 31, occupation: "Journalist", image: UIImage(named: "pessoa-13"))
        let card14 = CardModel(name: "Mia Robinson", age: 26, occupation: "Chef", image: UIImage(named: "pessoa-14"))
        let card15 = CardModel(name: "Nathan Brooks", age: 39, occupation: "Lawyer", image: UIImage(named: "pessoa-15"))
        let card16 = CardModel(name: "Olivia Parker", age: 34, occupation: "Interior Designer", image: UIImage(named: "pessoa-16"))
        let card17 = CardModel(name: "Peter Adams", age: 41, occupation: "Engineer", image: UIImage(named: "pessoa-17"))
        let card18 = CardModel(name: "Quinn Turner", age: 28, occupation: "Financial Analyst", image: UIImage(named: "pessoa-18"))
        let card19 = CardModel(name: "Rachel Hall", age: 37, occupation: "HR Manager", image: UIImage(named: "pessoa-19"))
        let card20 = CardModel(name: "Samuel Wright", age: 29, occupation: "Photographer", image: UIImage(named: "pessoa-20"))
        let card21 = CardModel(name: "Tina Foster", age: 42, occupation: "Fashion Designer", image: UIImage(named: "pessoa-21"))
        
        let card22 = CardModel(name: "Michelle", age: 21, occupation: "Fashion Designer", image: UIImage(named: "michelle"))
        let card23 = CardModel(name: "Joshua", age: 23, occupation: "Fashion Designer", image: UIImage(named: "Joshua"))
        let card24 = CardModel(name: "Daiane", age: 29, occupation: "Fashion Designer", image: UIImage(named: "daiane"))
        let card25 = CardModel(name: "Julian", age: 19, occupation: "Fashion Designer", image: UIImage(named: "julian"))
        let card26 = CardModel(name: "Andrew", age: 33, occupation: "Fashion Designer", image: UIImage(named: "andrew"))
        let card27 = CardModel(name: "Bailey", age: 26, occupation: "Fashion Designer", image: UIImage(named: "bailey"))
        let card28 = CardModel(name: "Rachel", age: 25, occupation: "Fashion Designer", image: UIImage(named: "rachel"))
        
        return [
            card1, card2, card3, card4, card5, card6, card7, card8, card9, card10,
            card11, card12, card13, card14, card15, card16, card17, card18, card19, card20,
            card21, card22, card23, card24, card25, card26, card27, card28
        ]
    }
}
