//
//  TaskCellView.swift
//  ToDoList_SwiftUI+Firebase
//
//  Created by Gustavo Anjos on 15/02/21.
//

import SwiftUI

struct TaskCellView: View {
    
    @ObservedObject var taskCellVM: TaskCellViewModel
    
    var body: some View {
        HStack{
            Image(systemName: taskCellVM.task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
            
            Text(taskCellVM.task.title)
        }
    }
}

struct TaskCellView_Previews: PreviewProvider {
    static var previews: some View {
        TaskCellView(taskCellVM: TaskCellViewModel.init(task: testDataTasks[0]))
    }
}
