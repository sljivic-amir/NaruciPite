//
//  PiteDetailView.swift
//  NaruciPite
//
//  Created by Amir Sljivic on 14. 10. 2022..
//

import SwiftUI


class NumbersOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}

struct PiteDetailView: View {
    let pita:Pita
    @ObservedObject var input = NumbersOnly()
    @State var showOrder : Bool = false
    @Binding var  pitaPrice : String
    var body: some View {
        VStack{
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
            Text("Cijena : \(input.value == "" ? "0" : calculatePrice(weight: input.value , price : pita.price ))")
            
                TextField("Kolicina: grami", text: $input.value)
                    .padding()
                    .keyboardType(.decimalPad)
                Button("Naruci"){
                    showOrder = true
                }.alert("Da li zelite da narucite  \(input.value) grama" ,isPresented: $showOrder) {
                    Button("Da") {
                        pitaPrice = calculatePrice(weight: input.value , price : pita.price )
                        showOrder = false
                        input.value = ""
                    }
                    Button("Ne") {
                        showOrder = false
                    }
                }
            
            
            
        }
    }
    func calculatePrice(weight: String, price : Double )-> String{
        return String(Double(weight)! * price/1000 )
    }
}


struct PiteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PiteDetailView(pita: Pita(type: "Zeljanica", price:10.0), pitaPrice: .constant("") )
    }
    
}
