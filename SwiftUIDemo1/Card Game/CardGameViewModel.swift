//
//  CardGameViewModel.swift
//  SwiftUIDemo1
//
//  Created by Bibin Joseph on 19/04/21.
//

import SwiftUI

class CardGameViewModal: BaseViewModel {
    var model: CardGameModal<String>?
        
    var cards: [CardGameModal<String>.Card] { model?.cards ?? [] }
    
    required init(with model: CardGameModal<String>?) {
        self.model = model
    }
    
}

/// MARK: - Intent(s)
extension CardGameViewModal {
    func choose(card: CardGameModal<String>.Card) {
        model?.choose(card: card)
    }
}
