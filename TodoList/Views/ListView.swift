//
//  ListView.swift
//  TodoList
//
//  Created by user268168 on 11/29/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title", isCompleted: false),
        ItemModel(title: "This is the second", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
