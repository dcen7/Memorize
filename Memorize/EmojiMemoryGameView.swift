//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Mehmet Deniz Cengiz on 5/30/20.
//  Copyright © 2020 Deniz Cengiz. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
            .aspectRatio(0.75, contentMode: .fit)
    }
    
    
}

struct CardView: View{
    
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUP {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
                    
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
                
            }
        }
    }
}






















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}