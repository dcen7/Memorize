//
//  MemoryGame.swift
//  Memorize
//
//  Created by Mehmet Deniz Cengiz on 8/9/20.
//  Copyright © 2020 Deniz Cengiz. All rights reserved.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCard: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCard {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUP: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
