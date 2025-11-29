//
//  FeatureType.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct FeatureType: View {
    let service: ServiceType
    var body: some View {
        VStack {
            Image(service.imagem)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .fixedSize(
                    horizontal: false,
                    vertical: true
                )
            Text(service.name)
                .font(.system(size: 20))
        }.frame(
            width: 80, height: 80
        )
    }
}
#Preview {
    FeatureType(service: ServiceType(id: 1, name: "1", imagem: "image1"))
}
