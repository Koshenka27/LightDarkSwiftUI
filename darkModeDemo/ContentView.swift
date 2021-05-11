//
//  ContentView.swift
//  darkModeDemo
//
//  Created by Logan Koshenka on 5/10/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Color("sky")
            
            Circle()
                .frame(width: 300)
                .offset(x: 150, y: -350)
                .foregroundColor(Color(colorScheme == .light ? #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1) : #colorLiteral(red: 0, green: 1, blue: 0.04290095224, alpha: 1)))
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
