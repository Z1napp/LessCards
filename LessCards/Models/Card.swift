//
//  Card.swift
//  LessCards
//
//  Created by Vadym Piatkovskyi on 22.12.2022.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let title: String
}

struct RowView: View {
    let cards: [Card]
    let width: CGFloat
    let height: CGFloat
    let horizontalSpacing: CGFloat
    var body: some View {
        HStack(spacing: horizontalSpacing) {
            ForEach(cards) { card in
                SingleCardView(title: card.title)
                    .frame(width: width, height: height)
            }
        }
        .padding([.leading, .bottom, .trailing])
    }
}
