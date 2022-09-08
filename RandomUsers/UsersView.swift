//
//  UserView.swift
//  RandomUsers
//
//  Created by Вадим Селиверстов on 08.09.2022.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Raw JSON Data:")
                ScrollView {
                    Text(userData.users)
                }
            }
            .padding()
            .navigationTitle("Random Users")
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
