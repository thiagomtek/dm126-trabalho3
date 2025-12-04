//
//  HomeView.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct HomeView: View {
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
    HomeView()
}
