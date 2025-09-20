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
                TrainCardView()
                TrainCardView()
                TrainCardView()
                TrainCardView()
            }
        }
    }
}

#Preview {
    ContentView()
}
