//
//  NoteView.swift
//  ConceptLink
//
//  Created by 천 on 5/5/26.
//

import SwiftUI

struct NoteView: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack(alignment: .center) {
                Text("노트")
                    .font(.system(size: 34, weight: .bold))
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundStyle(Color("mainColor"))
                        .frame(width: 44, height: 44)
                        .background(.white)
                        .clipShape(Circle())
                        .shadow(color: .black.opacity(0.08), radius: 6, x: 0, y: 3)
                }
                .buttonStyle(.plain)
            }
            
            HStack {
                Text("학습 내용을 노트로 정리해보세요.")
                    .font(.system(size: 16))
                    .foregroundStyle(.secondary)
                Spacer()
            }
            
            HStack(spacing: 12) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 20))
                    .foregroundStyle(.secondary)
                
                TextField("개념, 노트, 태그 검색", text: .constant(""))
                    .font(.system(size: 16))
                
                Image(systemName: "slider.horizontal.3")
                    .font(.system(size: 20))
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 16)
            .frame(height: 56)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
            
            HStack(alignment: .firstTextBaseline) {
                Text("전체 노트")
                    .font(.system(size: 20, weight: .semibold))
                
                Spacer()
                
                Button {
                    
                } label: {
                    HStack(spacing: 4) {
                        Text("최신순")
                        Image(systemName: "chevron.right")
                            .font(.system(size: 13, weight: .semibold))
                    }
                    .font(.system(size: 15, weight: .medium))
                    .foregroundStyle(Color("mainColor"))
                }
                .buttonStyle(.plain)
            }
            
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 12) {
                    ForEach(0 ..< 8) { _ in
                        NoteCardView()
                    }
                }
                .padding(.bottom, 100)
            }
        }
        .padding(.horizontal, 16)
        .padding(.top, 16)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(red: 250/255, green: 251/255, blue: 253/255))
    }
}

#Preview {
    ContentView()
}
