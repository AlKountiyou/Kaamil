//
//  HomeView.swift
//  Kaamil
//
//  Created by mouhamad kounta on 01/03/2024.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Bienvenue sur Kaamil")
                    .font(.title)
                    .padding()

                NavigationLink(destination: GroupCreationView()) {
                    Text("Créer un groupe")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}
