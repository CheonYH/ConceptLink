//
//  TagChip.swift
//  ConceptLink
//
//  Created by 천 on 5/5/26.
//

import SwiftUI

struct TagChip: View {
    let title: String

    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: "square.stack.3d.up")
                .font(.system(size: 14))
                .foregroundStyle(Color(red: 28/255, green: 62/255, blue: 175/255))

            Text(title)
                .font(.footnote)
                .foregroundStyle(.primary)
                .lineLimit(1)
        }
        .padding(.horizontal, 10)
        .frame(height: 42)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
    }
}

#Preview {
    ContentView()
}
