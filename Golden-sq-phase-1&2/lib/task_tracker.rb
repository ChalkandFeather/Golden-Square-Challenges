class TaskTracker
  def initialize() 
    @tasks = task
  end

  def add_task(task) 
    @tasks << task
  end

  def list_tasks()
    return @tasks
  end

  def mark_as_complete(task)
    @tasks.delete(task)
  end
end