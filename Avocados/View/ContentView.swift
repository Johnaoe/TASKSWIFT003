//
//  ContentView.swift
//  Avocados
//
//  Created by Jonas Narbutas on 2024-01-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                //MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack (alignment: .top, spacing: 20){
                        HeaderView()
                    }
                    
                }
                
                //MARK: - FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    Text("Everything you wanted to know about avocados")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
