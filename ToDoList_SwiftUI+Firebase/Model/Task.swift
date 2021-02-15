//
//  Tsk.swift
//  ToDoList_SwiftUI+Firebase
//
//  Created by Gustavo Anjos on 14/02/21.
//

import Foundation

struct Task {
    var title: String
    var completed: Bool
}

#if DEBUG

let testDataTasks = [
    Task(title: "Implement the UI", completed: true),
    Task(title: "Connect to Firebase", completed: false),
    Task(title: "????", completed: false),
    Task(title: "Profit!", completed: false)
]


#endif
