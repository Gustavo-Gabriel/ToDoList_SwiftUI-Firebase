//
//  ContentView.swift
//  ToDoList_SwiftUI+Firebase
//
//  Created by Gustavo Anjos on 14/02/21.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        
        NavigationView{
            VStack(alignment: .leading) {
                List(0 ..< 5) { item in
                    Image(systemName: "circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Implement the UI")
                }
                
                Button(action: {}) {
                    HStack{
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        
                        Text("Add New Task")
                    }
                    .padding()
                }
                .navigationBarTitle("Tasks")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
