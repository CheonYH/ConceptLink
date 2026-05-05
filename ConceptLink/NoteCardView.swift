//
//  NoteCardView.swift
//  ConceptLink
//
//  Created by 천 on 5/5/26.
//

import SwiftUI

struct NoteCardView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 14) {
            NoteIconView(
                systemName: "square.stack.3d.up",
                iconColor: Color("mainColor"),
                backgroundColor: Color("mainColor").opacity(0.08),
                boxSize: 56,
                iconSize: 26,
                cornerRadius: 16
            )

            VStack(alignment: .leading, spacing: 7) {
                HStack(alignment: .firstTextBaseline, spacing: 8) {
                    Text("Stack의 Push/Pop 연산")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundStyle(.primary)
                        .lineLimit(1)
                        .truncationMode(.tail)

                    Spacer(minLength: 8)

                    Text("오늘 09:21")
                        .font(.system(size: 13))
                        .foregroundStyle(.secondary)
                        .lineLimit(1)
                        .fixedSize()
                }

                HStack(spacing: 6) {
                    NoteTagChip(title: "자료구조")
                    NoteTagChip(title: "Stack")
                }

                HStack(alignment: .center, spacing: 8) {
                    Text("스택의 기본 연산과 시간 복잡도를 간단히 정리했습니다.")
                        .font(.system(size: 14))
                        .foregroundStyle(.secondary)
                        .lineLimit(2)
                        .lineSpacing(3)

                    Spacer(minLength: 4)

                    Image(systemName: "chevron.right")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(.secondary.opacity(0.75))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(16)
        .frame(maxWidth: .infinity, minHeight: 116, alignment: .topLeading)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
    }
}

private struct NoteTagChip: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.system(size: 12, weight: .medium))
            .foregroundStyle(Color("mainColor").opacity(0.8))
            .padding(.horizontal, 9)
            .padding(.vertical, 4)
            .background(
                Capsule()
                    .fill(Color("mainColor").opacity(0.08))
            )
    }
}

#Preview {
    NoteCardView()
        .padding()
        .background(Color(red: 250/255, green: 251/255, blue: 253/255))
}
