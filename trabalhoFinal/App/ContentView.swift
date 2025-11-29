//
//  ContentView.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                NavigationBar()
                FeaturesGrid()
                CarouselTabView()
                GoalContainer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
