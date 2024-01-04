//
//  ContentView.swift
//  Avocados
//
//  Created by Jonas Narbutas on 2024-01-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("tabicon-book")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Content")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
