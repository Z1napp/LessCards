//
//  SingleCardView.swift
//  LessCards
//
//  Created by Vadym Piatkovskyi on 22.12.2022.
//

import SwiftUI

struct SingleCardView: View {
    let title: String
    
    var body: some View {
        VStack {
            Image(systemName: "creditcard.trianglebadge.exclamationmark")
                .foregroundColor(.white)
            
            Text(title)
                .font(.body)
                .foregroundColor(.white)
                .bold()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.random)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView(title: "SomeTitle")
    }
}

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
