//
//  SignUpBasicView.swift
//  StartCoordinators
//
//  Created by Vlad Iacob on 23.02.2022.
//

import SwiftUI

struct SignUpBasicView: View {
    var goNext: (() -> Void)?
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("This is step 1 in the flow")
                    .font(.title2)
                Button("Next") {
                    goNext?()
                }
            }
        }
        .navigationTitle("Step 1")
    }
}
