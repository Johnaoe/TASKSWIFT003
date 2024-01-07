//
//  ContentView.swift
//  Avocados
//
//  Created by Jonas Narbutas on 2024-01-02.
//

import SwiftUI

struct ContentView: View {
    
    var headers: [Header] = headersData
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                //MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack (alignment: .top, spacing: 0){
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }

                    }
                    
                }
                //MARK: - DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                
                //MARK: - FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .modifier(TitleModifier())
                        .fontWeight(.bold)
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

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData)
    }
}
