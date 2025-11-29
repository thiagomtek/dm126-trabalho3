//
//  Features_Grid.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct FeaturesGrid: View {
    var gridLayout: [GridItem] {
        return Array(
            repeating:
                GridItem(.flexible()),
            count: 2
        )
    }
    var body: some View {
        LazyHGrid(rows: gridLayout) {
            ForEach(servicesMock) { service in
                FeatureType(service: service)
            }
        }.frame(
            height:
                200
        ).padding(
            .horizontal, 15
        ).padding(.top, 15)
    }
}

#Preview {
    FeaturesGrid()
}
