//
//  MainView.swift
//  ConceptLink
//
//  Created by 천 on 5/4/26.
//

import SwiftUI

let dummyNotes = [
    "SwiftUI 기초 정리",
    "ObservableObject와 State",
    "URLSession 학습 노트"
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
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bell")
                        .font(.system(size: 20))
                        .frame(width: 44, height: 44, alignment: .trailing)
                }
                .buttonStyle(.plain)
                
                
            }
            
            HStack {
                Text("안녕하세요, 길동님!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            HStack {
                Text("오늘도 좋은 학습 되세요")
                Spacer()
            }
            
            HStack {
                
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.secondary)
                
                TextField("검색", text: .constant(""))
                    .font(.system(size: 15))
                
                Image(systemName: "slider.horizontal.3")
                    .foregroundStyle(.secondary)
                
            }
            .padding(.horizontal, 14)
            .frame(height: 46)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
            
            HStack {
                Text("최근 노트")
                    .font(.headline)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("전체 보기")
                        .font(.subheadline)
                }
                
            }
            
            VStack(spacing: 16) {
                ForEach(dummyNotes, id: \.self) { note in
                    
                    HStack(alignment: .top, spacing: 12) {
                        Image(systemName: "square.stack.3d.up")
                            .foregroundStyle(Color("mainColor"))
                            .font(.system(size: 20))
                            .frame(width: 32, height: 32)
                        
                        VStack(alignment: .leading, spacing: 6) {
                            HStack(alignment: .firstTextBaseline, spacing: 6) {
                                Text(note)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                
                                Text("Stack")
                                    .font(.caption2)
                                    .padding(.horizontal, 6)
                                    .padding(.vertical, 3)
                                    .background(Capsule().fill(Color(.systemGray6)))
                            }
                            
                            Text("오늘 학습한 내용 정리")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("오늘 09:21")
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                            .lineLimit(1)
                            .fixedSize()
                    }
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
                }
            }
            
            HStack {
                Text("개념 태그")
                    .font(.headline)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("전체 태그")
                        .font(.subheadline)
                }
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
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(red: 250/255, green: 251/255, blue: 253/255))
    }
}



#Preview {
    ContentView()
}
