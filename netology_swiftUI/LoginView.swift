//
//  LoginView.swift
//  netology_swiftUI
//
//  Created by v.milchakova on 25.07.2021.
//

import SwiftUI

struct LoginView: View {
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 16) {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 70)
            VStack (alignment: .center, spacing: 0, content: {
                TextField("Email or phone", text: $login).modifier(field())
                                .padding(.bottom, 0)
                SecureField("Password", text: $password).modifier(field())
                                .padding(.top, 0)
            })
            Button("Log in") {
                print("Нажали Log in")
            }.modifier(button())
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct field: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Open Sans", size: 18))
            .frame(width: 300, height: 50, alignment: .center)
            .padding([.leading, .trailing], 16)
            .background(Color(red: 239/255, green: 243/255, blue: 244/255))
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1))
    }
}

struct button: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 332, height: 50, alignment: .center)
            .font(.custom("Open Sans", size: 18))
            .foregroundColor(.white)
            .background(Color(red: 74 / 255, green: 134 / 255, blue: 204 / 255))
            .cornerRadius(10)
    }
}
