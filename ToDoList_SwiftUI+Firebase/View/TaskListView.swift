//
//  ContentView.swift
//  ToDoList_SwiftUI+Firebase
//
//  Created by Gustavo Anjos on 14/02/21.
//

import SwiftUI

struct TaskListView: View {
    
    let tasks = testDataTasks
    
    var body: some View {
        
        NavigationView{
            VStack(alignment: .leading) {
                
                List(tasks) { task in
                    TaskCellView(task: task)
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
