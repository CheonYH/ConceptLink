//
//  NoteIconView.swift
//  ConceptLink
//
//  Created by 천 on 5/5/26.
//
import SwiftUI

struct NoteIconView: View {
    let systemName: String
    let iconColor: Color
    let backgroundColor: Color
    var boxSize: CGFloat = 56
    var iconSize: CGFloat = 26
    var cornerRadius: CGFloat = 16

    var body: some View {
        Image(systemName: systemName)
            .font(.system(size: iconSize, weight: .medium))
            .foregroundStyle(iconColor)
            .frame(width: boxSize, height: boxSize)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}
