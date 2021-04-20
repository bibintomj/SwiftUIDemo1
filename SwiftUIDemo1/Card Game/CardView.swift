//
//  CardView.swift
//  SwiftUIDemo1
//
//  Created by Bibin Joseph on 19/04/21.
//

import SwiftUI

struct CardView<CardContent>: View {
    @State private(set) var card: CardGameModal<CardContent>.Card
//    @State private var isVisible: Bool = false
    var body: some View {
        ZStack {
            Group {
                RoundedRectangle(cornerRadius: 10).fill(card.isFaceUp ? Color.clear : .blue)
                RoundedRectangle(cornerRadius: 10).stroke()
                
                if card.isFaceUp {
                    Text(card.content as? String ?? "")
                }
            }
        }
        .padding()
        .foregroundColor(.blue)
        .font(Font.largeTitle)
//        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//        .onTapGesture {
//            withAnimation {
//                card.isFaceUp.toggle()
//            }
//        }
//        .rotation3DEffect(card.isFaceUp ? Angle(degrees: 0): Angle(degrees: 180), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
        

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: CardGameModal<String>.Card.init(id: 1, isFaceUp: true, isMatched: false, content: "🦕"))
    }
}
