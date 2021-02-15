//
//  TaskListViewModel.swift
//  ToDoList_SwiftUI+Firebase
//
//  Created by Gustavo Anjos on 15/02/21.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    
    @Published var taskCellViewModels = [TaskCellViewModel]()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        self.taskCellViewModels = testDataTasks.map{ task in
            TaskCellViewModel(task: task)
        }
    }
    
}
