//
//  PiteListView.swift
//  NaruciPite
//
//  Created by Amir Sljivic on 14. 10. 2022..
//

import Combine
import SwiftUI


struct PitaRow: View {
    let pita:Pita
    
    var body : some View {
        HStack{
            
            Image("\(pita.type)").resizable().scaledToFit().frame(width: 120, height: 120)
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
struct PiteListView: View {
    let pite : [Pita]
    @State var  cijena : String
    var body: some View {
        
        NavigationView{
            VStack{
                Text("cijena : \(cijena)")
                List(Order().pitaList){ pita in
                    NavigationLink(destination : PiteDetailView(pita: pita ,pitaPrice: $cijena)
                                   , label:{ PitaRow(pita: pita )})}
                .navigationTitle("Pite")
            }
        }
    }
}

struct PiteListView_Previews: PreviewProvider {
    static var previews: some View {
        PiteListView(pite: Order().pitaList , cijena : "")
    }

}
