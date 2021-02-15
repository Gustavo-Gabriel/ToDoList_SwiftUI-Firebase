//
//  TaskCellViewModel.swift
//  ToDoList_SwiftUI+Firebase
//
//  Created by Gustavo Anjos on 15/02/21.
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject, Identifiable {
    
    @Published var task: Task
    @Published var completationStateIconName = ""
    
    var id = ""
    private var cancellables = Set<AnyCancellable>()
    
    init(task: Task) {
        
        self.task = task
        
        $task.map{ task in
            task.completed ? "checkmark.circle.fill" : "circle"
        }
        .assign(to: \.completationStateIconName, on: self)
        .store(in: &cancellables)
        
        
        $task.map{ task in
            task.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)

    }
    
}
