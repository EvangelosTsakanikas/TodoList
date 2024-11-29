//
//  ItemModel.swift
//  TodoList
//
//  Created by user268168 on 11/29/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
