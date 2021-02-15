//
//  TaskCellView.swift
//  ToDoList_SwiftUI+Firebase
//
//  Created by Gustavo Anjos on 15/02/21.
//

import SwiftUI

struct TaskCellView: View {
    
    let task: Task
    
    var body: some View {
        HStack{
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
            
            Text(task.title)
        }
    }
}

struct TaskCellView_Previews: PreviewProvider {
    static var previews: some View {
        TaskCellView(task: testDataTasks[0])
    }
}
