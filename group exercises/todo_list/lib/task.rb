class Task
  @@tasks_count = 0
  attr_accessor :content, :id

  def initialize(content)
    @@tasks_count += 1
    @content = content
    @id = @@tasks_count
  end

  def print
    "Task ##{@id}: #{@content}"
  end
end
