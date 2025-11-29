//
//  DataSourceMock.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import Foundation

let servicesMock: [ServiceType] = [
    ServiceType(id: 1, name: "Exercitar", imagem: "image1"),
    ServiceType(id: 2, name: "Meditar", imagem: "image2"),
    ServiceType(id: 3, name: "Alongamento", imagem: "image3"),
    ServiceType(id: 4, name: "Coffee time", imagem: "image4"),
    ServiceType(id: 5, name: "Pausa 5min", imagem: "image5"),
    ServiceType(id: 6, name: "Exercitar", imagem: "image6"),
]

let carouselMock: [ServiceType] = [
    ServiceType(id: 1, name: "Exercitar", imagem: "image1"),
    ServiceType(id: 2, name: "Meditar", imagem: "image2"),
    ServiceType(id: 3, name: "Alongamento", imagem: "image3"),
    ServiceType(id: 4, name: "Coffee time", imagem: "image4"),
    ServiceType(id: 5, name: "Pausa 5min", imagem: "image5"),
    ServiceType(id: 6, name: "Exercitar", imagem: "image6"),
]

let goalMock: [GoalType] = [
    GoalType(
        id: 1,
        icone: "moon.zzz.fill",
        titulo: "Descanso",
        descricao: "Dormir 8h por noite"
    ),
    GoalType(
        id: 2,
        icone: "hare.fill",
        titulo: "Exercicio",
        descricao: "Correr 5km duas vezes na semana"
    ),
    GoalType(
        id: 3,
        icone: "goforward.60",
        titulo: "Redes sociais",
        descricao: "Usar o celular por apenas 1h"
    ),
]
