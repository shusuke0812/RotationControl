//
//  SideMenuView.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2024/6/23.
//

import SwiftUI

struct SideMenuView: View {
    @State var isOpen: Bool
    var onTapBackground: (() -> Void)?
    private let maxWidth = UIScreen.main.bounds.width

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
                .opacity(isOpen ? 0.1 : 0.0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        onTapBackground?()
                    }
                }
            ZStack {
                List {
                    Section {
                        HStack {
                            Image(systemName: "person.circle")
                            Text("アカウント")
                        }
                        HStack {
                            Image(systemName: "cart")
                            Text("支払い")
                        }
                    }
                }
                VStack {
                    Spacer()
                    Text("ログアウト")
                        .font(.footnote)
                }
                .foregroundStyle(.secondary)
                .padding()
            }
            .padding(.trailing, maxWidth / 4)
            .offset(x: isOpen ? 0 : -maxWidth)
            .animation(.easeIn, value: 0.25)
        }
    }
}

#Preview {
    SideMenuView(isOpen: true)
}
