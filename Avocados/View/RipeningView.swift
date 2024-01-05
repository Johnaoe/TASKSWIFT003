//
//  RipeningView.swift
//  Avocados
//
//  Created by Jonas Narbutas on 2024-01-04.
//

import SwiftUI

struct RipeningView: View {
    var body: some View {
        VStack{
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
            Text("Avocados")
                .font(.system(size: 42, weight: .bold, design: .serif))
                .foregroundColor(Color.white)
                .padding()
            Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
            .lineLimit(nil)
            .font(.system(.headline, design: .serif))
            .foregroundColor(Color("ColorGreenLight"))
            .multilineTextAlignment(.center)
            .lineSpacing(8)
            .frame(maxWidth: 640, minHeight: 120)
            Spacer()
        }
        .background(
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill))
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView()
    }
}
