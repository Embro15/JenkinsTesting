//
//  ContentView.swift
//  JenkinsTesting
//
//  Created by Jesse Steinberg on 5/25/25.
//

import SwiftUI

struct ContentView: View {
    let items = [
        TodoItem(title: "Buy groceries", description: "Milk, Bread, Eggs"),
        TodoItem(title: "Call Alice", description: "Discuss project updates"),
        TodoItem(title: "Workout", description: "Leg day at the gym"),
        TodoItem(title: "Emeregency Button", description: "Only press in emergency")
    ]
    
    var body: some View {
        NavigationView {
            List(items) { item in
                NavigationLink(destination: DetailView(item: item)) {
                    Text(item.title)
                }
            }
            .navigationTitle("Todo List")
        }
    }
}

struct DetailView: View {
    var item: TodoItem

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(item.title)
                .font(.largeTitle)
                .bold()
            Text(item.description)
            Spacer()
        }
        .padding()
        .navigationTitle("Detail")
    }
}



#Preview {
    ContentView()
}
