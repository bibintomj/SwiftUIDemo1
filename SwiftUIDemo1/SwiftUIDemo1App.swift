//
//  SwiftUIDemo1App.swift
//  SwiftUIDemo1
//
//  Created by Bibin Joseph on 19/04/21.
//

import SwiftUI

@main
struct SwiftUIDemo1App: App {
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        /// Do app init tasks such as firebase/environment/database configure
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
//            let factory = ["🦕", "🔥", "🤩", "👻",]
////                           "☠️", "👽", "🤖", "🎃",
////                           "🫀", "🦅", "🐢", "🦖",
////                           "🕷️", "🦚", "🦦", "🦥"]
//            let model = CardGameModal<String>(numberOfPairsOfCards: factory.count) { pairIndex -> String in
//                factory[pairIndex]
//            }
//            let viewModel = CardGameViewModal(with: model)
//            CardGridView(with: viewModel)
//
//                .onOpenURL { url in
//                    /// Perform action for deep linking.
//                }
        }
        /// Perform actions when app life cycle event triggers
        .onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .background: break
            case .inactive: break
            case .active: break
            @unknown default: break
            }
        }
    }
}
