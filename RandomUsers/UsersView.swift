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
            List(userData.users) { user in
                Text(user.fullName)
            }
            .navigationTitle("Random Users")
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
