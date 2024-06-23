//
//  SideMenuView.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2024/6/23.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isOpen: Bool
    
    private let maxWidth = UIScreen.main.bounds.width

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
                .opacity(isOpen ? 0.7 : 0.0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isOpen.toggle()
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
        }
    }
}

#Preview {
    struct PreviewView: View {
        @State var isOpen = true
        var body: some View {
            SideMenuView(isOpen: $isOpen)
        }
    }
    return PreviewView()
}
