class TaskManager

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def get_tasks
    puts @tasks
    @tasks
  end

  def remove_task(id)
    @tasks.delete_if do |task|
      task.id == id
    end
  end
end
