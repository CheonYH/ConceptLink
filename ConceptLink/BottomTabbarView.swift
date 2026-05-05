//
//  BottomTabVIew.swift
//  ConceptLink
//
//  Created by 천 on 5/5/26.
//

import SwiftUI

enum Tab {
    case main
    case concept
    case note
    case setting
}

struct BottomTabbarView: View {
    @State var selection: Tab = .main
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch selection {
            case .main:
                NavigationStack {
                    MainView()
                }
            case .concept:
                NavigationStack {
                    SettingView()
                }
            case .note:
                NavigationStack {
                    NoteView()
                }
            case .setting:
                NavigationStack {
                    SettingView()
                }
            }
            
            CustomBottomTabbarView(selectedTab: $selection)
        }
    }
}

#Preview {
    BottomTabbarView()
}
