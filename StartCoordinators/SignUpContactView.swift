//
//  SignUpContactView.swift
//  StartCoordinators
//
//  Created by Vlad Iacob on 23.02.2022.
//

import SwiftUI

struct SignUpContactView: View {
    var goNext: (() -> Void)?
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("This is step 2 in the flow")
                    .font(.title2)
                Button("Next") {
                    goNext?()
                }
            }.padding()
        }
        .background(Color.secondary)
        .navigationTitle("Step 2")
    }
}
