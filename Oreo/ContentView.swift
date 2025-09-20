//
//  ContentView.swift
//  Oreo
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                TrainCardView(name: "Steel Roads", iconColor: .yellow)
                TrainCardView(name: "El Diablo Express", iconColor: .red)
                TrainCardView(name: "Correcaminos", iconColor: .orange)
                TrainCardView(name: "Tren de la Costa", iconColor: .black)
            }
        }
    }
}

#Preview {
    ContentView()
}
