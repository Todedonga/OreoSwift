//
//  ContentView.swift
//  Oreo
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var cardSeleccionada: Int = -1
    @State var pressedPadre: Bool = false
    @State var destino: String = ""
    
    var body: some View {
        ScrollView {
            
            Text("content view \(cardSeleccionada)")
            TextField("¿A dónde quieres viajar?", text: $destino)
                .disableAutocorrection(true)
                .autocapitalization(.words)
            Text("Viajaras a \(destino)")
            
            ScrollView(.horizontal) {
                HStack {
                    TransportesView(pressed: $pressedPadre, name: "Tren", image: "tram", index: 0, selectedIndex: $cardSeleccionada)
                    TransportesView(pressed: $pressedPadre, name: "Bus", image: "bus", index: 1, selectedIndex: $cardSeleccionada)
                    TransportesView(pressed: $pressedPadre, name: "Avión", image: "airplane", index: 2, selectedIndex: $cardSeleccionada)
                    TransportesView(pressed: $pressedPadre, name: "Ferry", image: "ferry.fill", index: 3, selectedIndex: $cardSeleccionada)
                }
                
            }
            
            ScrollView(.vertical) {
                VStack {
                    TrainCardView(name: "Tren Bala Hikari", iconColor: .green)
                    TrainCardView(name: "El Diablo Express", iconColor: .red)
                    TrainCardView(name: "Correcaminos", iconColor: .orange)
                    TrainCardView(name: "Tren de la Costa", iconColor: .black)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
