//
//  ProfileView.swift
//  NaruciPite
//
//  Created by Amir Sljivic on 14. 10. 2022..
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading){
            ProfileHeader()
            Spacer()
            ProfilePhoto()
            Spacer()
            ProfileDetails()
            Spacer()

        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct ProfileDetails: View {
    @StateObject var user = User()

    var body: some View {
        VStack(alignment: .center){
            HStack(alignment: .center) {
                Text("Ime:")
                    .font(.title)
                    .bold()
                Text("\(user.name)")
                    .font(.title)
                
            }
            HStack(alignment: .center) {
                Text("Adresa:")
                    .font(.title)
                    .bold()
                    .padding(15)
                Text("\(user.address)")
                    .font(.title)
            }
            HStack(alignment: .center) {
                Text("Telefon:")
                    .font(.title)
                    .bold()
                Text("\(user.phoneNumber)")
                    .font(.title)
            }
        }
    }
}

struct ProfilePhoto: View {
    var body: some View {
        HStack{
            Spacer()
            Image(systemName:"person.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 180.0, height: 180.0)
            Spacer()
            
        }
    }
}

struct ProfileHeader: View {
    var body: some View {
        Text("Profil")
            .font(.largeTitle)
            .bold()
            .padding(10)
    }
}
