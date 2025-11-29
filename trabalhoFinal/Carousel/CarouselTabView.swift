//
//  CarouselTabView.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct CarouselTabView: View {
    var gridLayout: [GridItem] {
          return Array(
              repeating:
                  GridItem(.flexible()),
              count: 2
          )
      }
    var body: some View {
        TabView {
            ForEach(carouselMock) { banner in CarouselItemView(banner: banner) }
        }.frame(width: 300).tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}
