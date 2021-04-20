//
//  Game.swift
//  SwiftUIDemo1
//
//  Created by Bibin Joseph on 19/04/21.
//

import Foundation

struct CardGameModal<CardContent> {
    var cards: [Card]
    
    init(numberOfPairsOfCards pairs: Int, cardContentFactory: (Int) -> CardContent) {
        self.cards = []
        for index in 0..<pairs {
            let card1 = Card(id: index, content: cardContentFactory(index))
            let card2 = Card(id: index+1, content: cardContentFactory(index))
            cards.append(card1)
            cards.append(card2)
        }
    }
}

extension CardGameModal {
    func choose(card: Card) {
        print("\(card) Chosen")
        
    }
}

extension CardGameModal {
    struct Card: Identifiable {
        var id: Int // To conform to Identifiable
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}

