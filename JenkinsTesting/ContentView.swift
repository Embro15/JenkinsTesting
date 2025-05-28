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


struct RadioButton<T: Hashable>: View {
    let label: String
    let value: T
    @Binding var selected: T

    var body: some View {
        Button(action: {
            selected = value
        }) {
            HStack {
                Image(systemName: selected == value ? "largecircle.fill.circle" : "circle")
                    .foregroundColor(selected == value ? .blue : .gray)
                Text(label)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct RadioButtonListView: View {
    @State private var selectedOption = "Option 1"
    let options = ["Option 1", "Option 2", "Option 3"]

    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .center) {
                ForEach(options, id: \.self) { option in
                    RadioButton(label: option, value: option, selected: $selectedOption)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                Text("Selected: \(selectedOption)")
                    .padding(.top)
            }
            Spacer()
        }
        .padding()
    }
}



#Preview {
    ContentView()
    RadioButtonListView()
}
