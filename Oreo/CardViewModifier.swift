//
//  CardViewModifier.swift
//  Oreo
//
//  Created by WIN603 on 24/09/25.
//

import SwiftUI

struct CardViewModifier: ViewModifier {
    var bgColor: Color = .white
    func body(content:Content)-> some View {
        content
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(bgColor)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(red: 130/255, green: 130/255, blue: 130/255,
                                  opacity: 0.2), lineWidth: 2)
            ).padding()
        
    }
}
