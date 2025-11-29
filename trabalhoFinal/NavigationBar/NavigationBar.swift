//
//  NavigationBar.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct NavigationBar: View {

    @State private var nomeUsuario: String = "Thiago Ribeiro"
    @State private var mostrarAlerta: Bool = false

    @State private var novoNomeDigitado: String = ""

    var body: some View {
        HStack {
            Button(nomeUsuario) {
                abrirEdicao()
            }
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(.primary)

            Button(action: {
                abrirEdicao()
            }) {
                Image(systemName: "person.badge.plus.fill")
                    .font(.system(size: 20))
            }
        }.alert("Alterar Nome", isPresented: $mostrarAlerta) {
            TextField("Digite o novo nome", text: $novoNomeDigitado)
            Button("Cancelar", role: .cancel) {}
            Button("Salvar") {
                if !novoNomeDigitado.isEmpty {
                    nomeUsuario = novoNomeDigitado
                }
            }
        }
    }

    func abrirEdicao() {
        novoNomeDigitado = nomeUsuario
        mostrarAlerta = true
    }
}

#Preview {
    NavigationBar()
}
