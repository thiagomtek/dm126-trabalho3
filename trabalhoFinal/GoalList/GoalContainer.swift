//
//  GoalContainer.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct GoalContainer: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 20
        ) {
            ForEach(goalMock) {
                goal in GoalListView(goal: goal)
            }
        }
    }
}

#Preview {
    GoalContainer()
}
