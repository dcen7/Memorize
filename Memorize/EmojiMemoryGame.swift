//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mehmet Deniz Cengiz on 8/9/20.
//  Copyright © 2020 Deniz Cengiz. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    //game
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCard: emojis.count) { pairIndex in
           return emojis[pairIndex]
            
        }
    }
    
//    MemoryGame<String>(numberOfPairsOfCard: 2, cardContentFactory: { (pairIndex: Int) -> String in
//        return "emoji"
//    })
    
    // MARK: - Access to the Modal
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    
}
