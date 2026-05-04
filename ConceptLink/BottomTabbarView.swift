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
                MainView()
            case .concept:
                SettingView()
            case .note:
                NoteView()
            case .setting:
                SettingView()
            }
            
            CustomBottomTabbarView(selectedTab: $selection)
        }
    }
}

#Preview {
    BottomTabbarView()
}
