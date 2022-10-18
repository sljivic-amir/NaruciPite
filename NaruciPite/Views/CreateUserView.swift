//
//  CreateUserView.swift
//  NaruciPite
//
//  Created by Amir Sljivic on 14. 10. 2022..
//

import SwiftUI


class User: ObservableObject{
    
    var name = ""
    @State var address = ""
    @State var phoneNumber = ""

}


struct CreateUserView: View {

    @StateObject var user = User()
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section(header: Text("Unesite licne podatke")){
                        TextField("Ime:", text: $user.name)
                        TextField("Adresa:", text: $user.address)
                        TextField("Broj telefona:", text: $user.phoneNumber)
                    }
                    
                }
                Button (
                action:{
                    print("imeee \(user.name)")
                },label:{
                    Text("Potvrdi")
                        .frame(width: 250, height: 50.0)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                }).padding()
            }
            .navigationTitle("Kreiraj profil")
        }
    }
    }

struct CreateUserView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserView()
    }
}
