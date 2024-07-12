import gleam/io

pub type Task {
  Task(id: Int, description: String, completed: Bool)
}

pub fn new_task(id: Int, description: String) -> Task {
  Task(id, description, False)
}

pub fn main() {
  io.println("Hello from task_manager!")
}
