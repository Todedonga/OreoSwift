//
//  TransoirtesView.swift
//  Oreo
//
//  Created by WIN603 on 24/09/25.
//

import SwiftUI

struct TransportesView: View {
    @Binding var pressed: Bool
    let name: String
    let image: String
    var index: Int
    @Binding var selectedIndex: Int
    
    func labelPresionado() -> CGFloat {
        return pressed ? 100 : 0
    }
    
    var body: some View {
        VStack {
            Label(name, systemImage: image)
                .modifier(CardViewModifier(bgColor: Color.green))
                .rotationEffect(.degrees(labelPresionado()))
                .onTapGesture {
                    withAnimation(){
                        selectedIndex = index
                        self.pressed.toggle()
                    }
                }
            
            if pressed {
                Image(systemName: "figure.run")
                    .foregroundColor(.white)
                    .padding(8)
                    .background(Color.blue)
                    .clipShape(Ellipse())
                    .transition(.slide)
            }
            Text("index seleccionado es \(selectedIndex)")
        }
    }
}

#Preview {
    TransportesView(pressed: .constant(false), name: "Barco", image: "sailboat", index: 0, selectedIndex: .constant(-1))
}
