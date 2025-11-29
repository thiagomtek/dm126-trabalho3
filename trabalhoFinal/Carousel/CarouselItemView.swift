//
//  CarouselItemView.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct CarouselItemView: View {
    let banner: ServiceType
    var body: some View {
        VStack{
            Image(banner.imagem).resizable().scaledToFit().cornerRadius(20)
            Text(banner.name).font(.title).bold()
        }
    }
}

#Preview {
    CarouselItemView(banner: ServiceType(id: 1, name: "Exercite-se", imagem: "image6"))
}
