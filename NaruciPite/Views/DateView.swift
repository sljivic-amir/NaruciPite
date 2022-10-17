//
//  DateView.swift
//  NaruciPite
//
//  Created by Amir Sljivic on 14. 10. 2022..
//

import SwiftUI

struct DateView: View {
    var body: some View {
        VStack{
            Text("Odaberite datum za koji zelite zakazati narudzbu")
            Text("DD/MM/YYYY")
            Text("HH:MM")
        }

    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}

