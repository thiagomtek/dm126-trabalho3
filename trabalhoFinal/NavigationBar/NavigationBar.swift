//
//  NavigationBar.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct NavigationBar: View {
    // MARK: - Estados
    @State private var nomeUsuario: String = "Thiago Ribeiro"  // Nome editável pelo lápis
    @State private var nomeAtual: String = "Daniel Mosca"  // Nome selecionado no Menu
    @State private var nomes: [String] = ["Daniel Mosca", "Thiago"]

    // Controles de exibição
    @State private var mostrarAlertaEdicao: Bool = false
    @State private var mostrarSheetAdicao: Bool = false

    // Variáveis temporárias para inputs
    @State private var nomeNovo: String = ""
    @State private var novoNomeDigitado: String = ""

    var body: some View {
        HStack {
            // 1. Menu Dropdown (Lado Esquerdo)
            Menu {
                ForEach(nomes, id: \.self) { nome in
                    Button(nome) {
                        nomeAtual = nome
                    }
                }
            } label: {
                HStack {
                    Text(nomeAtual)
                        .font(.headline)
                        .fontWeight(.bold)
                    Image(systemName: "chevron.down") 
                        .font(.caption)
                }
                .foregroundStyle(.primary)
            }

            Spacer()
            Button(action: {
                abrirEdicao()
            }) {
                HStack {
                    Text(nomeUsuario)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Image(systemName: "pencil.circle.fill")
                        .font(.system(size: 20))
                }
                .foregroundStyle(.primary)
            }

            Button(action: {
                mostrarSheetAdicao = true
            }) {
                Image(systemName: "plus.circle.fill")
                    .font(.title3)
                    .foregroundStyle(.blue)
            }
        }
        .padding()
        .background(Color(.systemGray6))

        // MARK: - Alerta de Edição
        .alert("Alterar Nome", isPresented: $mostrarAlertaEdicao) {
            TextField("Digite o novo nome", text: $novoNomeDigitado)
            Button("Cancelar", role: .cancel) {}
            Button("Salvar") {
                if !novoNomeDigitado.isEmpty {
                    nomeUsuario = novoNomeDigitado
                }
            }
        }


        .sheet(isPresented: $mostrarSheetAdicao) {
            VStack(spacing: 20) {
                Text("Adicionar novo nome")
                    .font(.headline)

                TextField("Digite o nome", text: $nomeNovo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                HStack(spacing: 20) {
                    Button("Cancelar") {
                        mostrarSheetAdicao = false
                        nomeNovo = ""
                    }
                    .foregroundStyle(.red)

                    Button("Adicionar") {
                        if !nomeNovo.isEmpty {
                            nomes.append(nomeNovo)
                            nomeAtual = nomeNovo  // Opcional: já seleciona o novo
                            nomeNovo = ""
                            mostrarSheetAdicao = false
                        }
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .padding()
            .presentationDetents([.fraction(0.3)])  // Tamanho do modal
        }
    }

    // Função auxiliar
    func abrirEdicao() {
        novoNomeDigitado = nomeUsuario
        mostrarAlertaEdicao = true
    }
}

#Preview {
    VStack {
        NavigationBar()
        Spacer()  // Apenas para jogar a barra para o topo no preview
    }
}
