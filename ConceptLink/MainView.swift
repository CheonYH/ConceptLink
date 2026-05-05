//
//  MainView.swift
//  ConceptLink
//
//  Created by 천 on 5/4/26.
//

import SwiftUI

let dummyNotes = [
    "Stack의 Push/Pop 연산",
    "Balanced Parentheses 문제",
    "DFS 탐색 정리"
]

let dummyTags = [
    "Stack", "DFS", "Graph", "Recursion",
    "Queue", "DP", "Tree", "Hash Table"
]

struct MainView: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("ConceptLink")
                    .foregroundStyle(Color("mainColor"))
                    .font(.system(size: 17, weight: .semibold))
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bell")
                        .font(.system(size: 18))
                        .foregroundStyle(.primary)
                        .frame(width: 40, height: 40, alignment: .trailing)
                }
                .buttonStyle(.plain)
            }
            
            HStack {
                Text("안녕하세요, 길동님!")
                    .font(.system(size: 34, weight: .bold))
                Spacer()
            }
            
            HStack {
                Text("오늘도 좋은 학습 되세요.")
                    .font(.system(size: 15))
                    .foregroundStyle(.secondary)
                Spacer()
            }
            
            HStack(spacing: 12) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 18))
                    .foregroundStyle(.secondary)
                
                TextField("개념, 노트, 태그 검색", text: .constant(""))
                    .font(.system(size: 15))
                
                Image(systemName: "slider.horizontal.3")
                    .font(.system(size: 18))
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 14)
            .frame(height: 46)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
            
            HStack(alignment: .firstTextBaseline) {
                Text("최근 노트")
                    .font(.system(size: 18, weight: .semibold))
                
                Spacer()
                
                Button {
                    
                } label: {
                    HStack(spacing: 4) {
                        Text("전체 보기")
                        Image(systemName: "chevron.right")
                            .font(.system(size: 11, weight: .semibold))
                    }
                    .font(.system(size: 13, weight: .medium))
                    .foregroundStyle(Color("mainColor"))
                }
                .buttonStyle(.plain)
            }
            
            VStack(spacing: 10) {
                ForEach(Array(dummyNotes.enumerated()), id: \.offset) { index, note in
                    RecentNoteCardView(
                        title: note,
                        tag: index == 2 ? "Graph" : "Stack",
                        summary: index == 0 ? "스택의 기본 연산과 시간 복잡도에 대해 정리했습니다." : "학습한 핵심 내용을 간단히 요약했습니다.",
                        time: index == 0 ? "오늘 09:21" : index == 1 ? "어제 22:15" : "2일 전",
                        systemName: index == 1 ? "chevron.left.forwardslash.chevron.right" : index == 2 ? "point.3.connected.trianglepath.dotted" : "square.stack.3d.up",
                        iconColor: index == 1 ? .green : index == 2 ? .purple : Color("mainColor")
                    )
                }
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text("개념 태그")
                    .font(.system(size: 18, weight: .semibold))
                
                Spacer()
                
                Button {
                    
                } label: {
                    HStack(spacing: 4) {
                        Text("전체 태그")
                        Image(systemName: "chevron.right")
                            .font(.system(size: 11, weight: .semibold))
                    }
                    .font(.system(size: 13, weight: .medium))
                    .foregroundStyle(Color("mainColor"))
                }
                .buttonStyle(.plain)
            }
            
            VStack(spacing: 10) {
                HStack(spacing: 10) {
                    ForEach(Array(dummyTags.prefix(4)), id: \.self) { tag in
                        TagChip(title: tag)
                    }
                }

                HStack(spacing: 10) {
                    ForEach(Array(dummyTags.dropFirst(4).prefix(4)), id: \.self) { tag in
                        TagChip(title: tag)
                    }
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.top, 16)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(red: 250/255, green: 251/255, blue: 253/255))
    }
}

private struct RecentNoteCardView: View {
    let title: String
    let tag: String
    let summary: String
    let time: String
    let systemName: String
    let iconColor: Color
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            NoteIconView(
                systemName: systemName,
                iconColor: iconColor,
                backgroundColor: iconColor.opacity(0.08),
                boxSize: 40,
                iconSize: 20,
                cornerRadius: 12
            )
            
            VStack(alignment: .leading, spacing: 5) {
                HStack(alignment: .firstTextBaseline, spacing: 6) {
                    Text(title)
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundStyle(.primary)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Text(tag)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(Color("mainColor").opacity(0.8))
                        .padding(.horizontal, 9)
                        .padding(.vertical, 4)
                        .background(Capsule().fill(Color("mainColor").opacity(0.08)))
                }
                
                Text(summary)
                    .font(.system(size: 14))
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                    .lineSpacing(2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(time)
                .font(.system(size: 13))
                .foregroundStyle(.secondary)
                .lineLimit(1)
                .fixedSize()
        }
        .padding(16)
        .frame(maxWidth: .infinity, minHeight: 100, alignment: .topLeading)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
    }
}

#Preview {
    ContentView()
}
