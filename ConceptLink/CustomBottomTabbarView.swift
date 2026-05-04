//
//  CustomBottomTabbarView.swift
//  ConceptLink
//
//  Created by 천 on 5/5/26.
//

import SwiftUI

struct CustomBottomTabbarView: View {
    @Binding var selectedTab: Tab
    
    var body: some View {
        HStack {
            Button {
                selectedTab = .main
            } label: {
                VStack(spacing: 4) {
                    Image(systemName: selectedTab == .main ? "house.fill" : "house")
                        .font(.system(size: 22))
                        .frame(width: 28, height: 28)
                        

                    Text("홈")
                        .font(.caption2)
                }
                .foregroundStyle(
                        selectedTab == .main
                        ? Color("mainColor")
                        : .secondary
                )
                .frame(maxWidth: .infinity)
            }
            .buttonStyle(.plain)

            Button {
                selectedTab = .concept
            } label: {
                VStack(spacing: 4) {
                    Image(systemName: selectedTab == .concept ? "shippingbox.fill" :"shippingbox")
                        .font(.system(size: 22))
                        .frame(width: 28, height: 28)
                        
                    Text("개념")
                        .font(.caption2)
                }
                .foregroundStyle(
                        selectedTab == .concept
                        ? Color("mainColor")
                        : .secondary
                )
                .frame(maxWidth: .infinity)
            }
            .buttonStyle(.plain)

            Button {
                selectedTab = .note
            } label: {
                VStack(spacing: 4) {
                    Image(systemName: selectedTab == .note ? "text.document.fill" : "text.document")
                        .font(.system(size: 22))
                        .frame(width: 28, height: 28)

                    Text("노트")
                        .font(.caption2)
                }
                .foregroundStyle(
                        selectedTab == .note
                        ? Color("mainColor")
                        : .secondary
                )
                .frame(maxWidth: .infinity)
            }
            .buttonStyle(.plain)

            Button {
                selectedTab = .setting
            } label: {
                VStack(spacing: 4) {
                    Image(systemName: selectedTab == .setting ? "gearshape.fill" :"gearshape")
                        .font(.system(size: 22))
                        .frame(width: 28, height: 28)

                    Text("설정")
                        .font(.caption2)
                }
                .foregroundStyle(
                        selectedTab == .setting
                        ? Color("mainColor")
                        : .secondary
                )
                .frame(maxWidth: .infinity)
            }
            .buttonStyle(.plain)
        }
        .padding(.horizontal, 12)
        .frame(height: 80)
        .background(.white)
        .shadow(color: .black.opacity(0.08), radius: 12, x: 0, y: 6)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    CustomBottomTabbarView(selectedTab: .constant(.main))
}
