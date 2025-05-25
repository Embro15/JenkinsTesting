//
//  TodoItem.swift
//  JenkinsTesting
//
//  Created by Jesse Steinberg on 5/25/25.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}
