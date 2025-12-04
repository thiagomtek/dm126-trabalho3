//
//  ContentView.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isLogged: Bool = false
    
    var body: some View {
        if isLogged {
            HomeView()
                .transition(.move(edge: .trailing))
        } else {
            LoginView(isLogged: $isLogged)
                .transition(.move(edge: .leading))
        }
    }
}

#Preview {
    ContentView()
}
