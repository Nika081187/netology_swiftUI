//
//  ContentView.swift
//  netology_swiftUI
//
//  Created by v.milchakova on 25.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    struct Universe: Identifiable {
        
        var id: String {
            name
        }
        
        let name: String
    }
    
    @State var universe: Universe?
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Какая ваша любимая киновселенная?").modifier(Header())
            Text("Выбор киновселенной может повести за собой последствия...")
                .padding()
                .foregroundColor(Color.red)
                .font(.headline)
            Button("Marvel") {
                universe = .init(name: "Marvel")
            }
            Button("DC") {
                universe = .init(name: "DC")
            }
        }
        .alert(item: $universe) { universe in
            Alert(title: Text(universe.name),
                  message: Text("спасибо за ваш выбор!"),
                  dismissButton: .cancel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.blue)
            .padding()
            .background(Color.white)
    }
}

