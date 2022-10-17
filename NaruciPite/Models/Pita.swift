//
//  Pita.swift
//  NaruciPite
//
//  Created by Amir Sljivic on 15. 10. 2022..
//
import Combine
import Foundation


class Pita: Identifiable {
    var id = UUID()
    var type = ""
    var price = 0.0
    
    init(type: String = "", price: Double = 0.0) {
        self.type = type
        self.price = price
        self.id = UUID()
    }
}

//var pitaList : Array<Pita> =  []
class Order: ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
        
    var type = 0 { didSet {update()}}
    
    
    func update() {
        didChange.send(())
    }
    
    var pitaList = [Pita(type: "Burek", price: 14.0), Pita(type: "Zeljanica", price: 10.0), Pita(type: "Sirnica", price: 10.0)]

    func addPita(p:Pita) {
        pitaList.append(p)
    }
    func totalSum() -> Double {
        return pitaList.reduce(0) { totalSoFar, pita in totalSoFar + pita.price }
    }

    
}


