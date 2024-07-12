import gleam/int
import gleam/io
import gleam/list
import gleam/string

pub type Task {
  Task(id: Int, description: String, completed: Bool)
}

pub fn new_task(id: Int, description: String) -> Task {
  Task(id, description, False)
}

pub fn complete_task(task: Task) -> Task {
  Task(task.id, task.description, True)
}

pub fn list_tasks(tasks: List(Task)) -> String {
  list.map(tasks, fn(task) {
    let status = case task.completed {
      True -> "completada"
      False -> "pendiente"
    }

    string.concat([
      "Tarea #",
      task.id |> int.to_string,
      ": ",
      task.description,
      " [",
      status,
      "]",
    ])
  })
  |> string.join("\n")
}

pub fn main() {
  io.println("Hello from task_manager!")
}
