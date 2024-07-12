import gleeunit
import gleeunit/should
import task_manager.{Task, new_task}

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hello_world_test() {
  1
  |> should.equal(1)
}

pub fn test_create_task() {
  let task = new_task(1, "Aprender Gleam")
  should.equal(task.id, 1)
  should.equal(task.description, "Aprender Gleam")
  should.equal(task.completed, False)
}
