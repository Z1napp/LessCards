//
//  CardsView.swift
//  LessCards
//
//  Created by Vadym Piatkovskyi on 22.12.2022.
//

import SwiftUI

struct CardsView: View {
    @State private var searchText = ""
    let cards: [Card] = MockStore.cards

    let itemPerRow: CGFloat = 2
    let horizontalSpacing: CGFloat = 16
    let height: CGFloat = 120
    
    var body: some View {
        ZStack {
            NavigationStack {
                GeometryReader { geometry in
                    ScrollView {
                        VStack {
                            ForEach(0..<10) { i in
                                if i % Int(itemPerRow) == 0 {
                                    buildView(rowIndex: i, geometry: geometry)
                                }
                            }
                        }
                    }
                }
                .searchable(text: $searchText)
                .toolbar {
                    Button("Add") {
                        print("Add")
                    }
                }
            }
        }
    }
    
    func buildView(rowIndex: Int, geometry: GeometryProxy) -> RowView? {
        var rowCards = [Card]()
        for itemIndex in 0..<Int(itemPerRow) {
            if rowIndex + itemIndex < cards.count {
                rowCards.append(cards[rowIndex + itemIndex])
            }
        }
        if !rowCards.isEmpty {
            return RowView(cards: rowCards, width: getWidth(geometry: geometry), height: height, horizontalSpacing: horizontalSpacing)
        }
        
        return nil
    }
    
    func getWidth(geometry: GeometryProxy) -> CGFloat {
        let width: CGFloat = (geometry.size.width - horizontalSpacing * (itemPerRow + 1)) / itemPerRow
        return width
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
