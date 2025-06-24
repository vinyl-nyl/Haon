//
//  WordListView.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI

struct WordListView: View {
    @StateObject private var viewModel = WordViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.words) { word in
                VStack(alignment: .leading) {
                    Text(word.korean)
                        .font(.headline)
                    Text(word.japanese)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("단어 학습")
            .onAppear {
                viewModel.loadWords()
            }
        }
    }
}

#Preview {
    WordListView()
}
