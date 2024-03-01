//
//  GroupCreationView.swift
//  Kaamil
//
//  Created by mouhamad kounta on 01/03/2024.
//

import Foundation
import SwiftUI
import CoreData

struct GroupCreationView: View {
    @State private var groupName: String = ""
    @State private var isPublic: Bool = false // Change this to toggle between public and private group
    @Environment(\.managedObjectContext) private var managedObjectContext

    var body: some View {
        VStack {
            Spacer()

            TextField("Nom du groupe", text: $groupName)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.horizontal)

            Toggle("Public", isOn: $isPublic)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.horizontal)

            Button(action: {
                createGroup()
            }) {
                Text("Créer")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            .padding(.top)

            Spacer()
        }
        .navigationBarTitle("Créer un groupe", displayMode: .inline)
    }

    private func createGroup() {
        let newGroup = Groupe(context: managedObjectContext)
        newGroup.name = groupName
        newGroup.isPublic = isPublic

        do {
            try managedObjectContext.save()
        } catch {
            print("Error saving group: \(error)")
        }
    }
}
