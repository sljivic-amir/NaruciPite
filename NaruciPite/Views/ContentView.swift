//
//  ContentView.swift
//  NaruciPite
//
//  Created by Amir Sljivic on 14. 10. 2022..
//

import SwiftUI

struct ContentView: View {
    let pite : [Pita]
    
    var body: some View {
        
            VStack {
                if(true){
                    PiteListView(pite:pite , cijena: "")
                    
                }
            

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pite:Order().pitaList)
    }
}
