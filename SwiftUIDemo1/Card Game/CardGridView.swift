//
//  CardGridView.swift
//  SwiftUIDemo1
//
//  Created by Bibin Joseph on 19/04/21.
//

import SwiftUI

struct CardGridView: ViewModelInitializableView {
    var viewModel: CardGameViewModal?
    
    init(with viewModel: CardGameViewModal) {
        self.viewModel = viewModel
        
    }
    
    var body: some View {
        VStack {
            ForEach(viewModel!.cards) { card in
                HStack {
                    CardView(card: card)
                        .onTapGesture {
                            self.viewModel?.choose(card: card)
                        }
                }
            }
        }
        
    }
}

struct CardGridView_Previews: PreviewProvider {
    static var previews: some View {
        let factory = ["🦕", "🔥", "🤩", "👻",
                       "☠️", "👽", "🤖", "🎃",
                       "🫀", "🦅", "🐢", "🦖",
                       "🕷️", "🦚", "🦦", "🦥"]
        let model = CardGameModal<String>(numberOfPairsOfCards: factory.count) { pairIndex -> String in
            factory[pairIndex]
        }
        let viewModel = CardGameViewModal(with: model)
        CardGridView(with: viewModel)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Mini"))
    }
}
