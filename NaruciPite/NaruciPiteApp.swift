//
//  NaruciPiteApp.swift
//  NaruciPite
//
//  Created by Amir Sljivic on 14. 10. 2022..
//

import SwiftUI

@main
struct NaruciPiteApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(pite: Order().pitaList)
        }
    }
}
