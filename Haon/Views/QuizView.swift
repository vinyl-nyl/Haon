//
//  QuizView.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI

struct QuizView: View {
    @StateObject private var viewModel = QuizViewModel()

    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                Text("次の韓国語の意味は?")
                    .font(.title3)
                
                Text(viewModel.currentQuestion.korean)
                    .font(.largeTitle.bold())

                ForEach(viewModel.currentOptions, id: \.self) { option in
                    Button(action: {
                        viewModel.checkAnswer(option)
                    }) {
                        Text(option)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue.opacity(0.2))
                            .cornerRadius(10)
                    }
                }

                Spacer()
            }
            .padding()
            .navigationTitle("クイズ")
            .onAppear {
                viewModel.loadQuiz()
            }
        }
    }
}

#Preview {
    QuizView()
}
