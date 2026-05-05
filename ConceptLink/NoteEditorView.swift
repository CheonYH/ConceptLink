//
//  NoteEditorView.swift
//  ConceptLink
//
//  Created by 천 on 5/5/26.
//

import SwiftUI

struct NoteEditorView: View {
    
    @State private var title: String = ""
    @State private var content: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("제목")
                .font(.headline)
            
            TextField("제목을 입력해 주세요", text: $title)
                .font(.system(size: 15))
                .padding(.horizontal, 14)
                .frame(height: 46)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
            
            Text("내용")
                .font(.headline)
            
            TextEditor(text: $content)
                .padding(8)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .scrollContentBackground(.hidden)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
            
            Text("연결 개념")
                .font(.headline)
            
            HStack(spacing: 10) {
                ForEach(0 ..< 4) { _ in
                    Button {
                        
                    } label: {
                        Text("Stack")
                            .font(.caption)
                            .foregroundStyle(.primary)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(Capsule().fill(Color(.systemGray6)))
                    }
                    .buttonStyle(.plain)
                }
                
                Button {
                    
                } label: {
                    Text("+ 추가")
                        .font(.caption)
                        .foregroundStyle(Color("mainColor"))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(Capsule().stroke(Color("mainColor"), lineWidth: 1))
                }
                .buttonStyle(.plain)
            }
            
            Button {
                
            } label: {
                HStack(spacing: 8) {
                    Image(systemName: "document.badge.plus")
                    Text("저장하기")
                }
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 52)
                .background(Color("mainColor"))
                .clipShape(Capsule())
            }
            .buttonStyle(.plain)
        }
        .padding(.horizontal, 16)
        .padding(.top, 16)
        .padding(.bottom, 24)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(red: 250/255, green: 251/255, blue: 253/255))
    }
}

#Preview {
    NoteEditorView()
}
