//
//  AddView.swift
//  TodoList
//
//  Created by user268168 on 11/29/24.
//

import SwiftUI

struct AddView: View {
    
    @State private var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type somehting here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.gray.opacity(0.5))
                    .clipShape(.rect(cornerRadius: 10))
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
            .padding()
        }
        .navigationTitle("Add an item 🖊️")
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
