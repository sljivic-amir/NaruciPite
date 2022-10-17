//
//  PiteDetailView.swift
//  NaruciPite
//
//  Created by Amir Sljivic on 14. 10. 2022..
//

import SwiftUI

struct PiteDetailView: View {
    let pita:Pita
    var body: some View {
        HStack{
            Image("\(pita.type)").resizable().scaledToFit().frame(width: 250, height: 250)
            VStack(alignment: .leading){
                Text(pita.type)
                    .font(.title2)
                Text(String(format:"%.2f", pita.price))
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct PiteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PiteDetailView(pita: Pita(type: "Zeljanica", price:10.0))
    }
    
}
