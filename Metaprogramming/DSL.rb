#Domain specific language is a mini language to solve probems in a specific


#What is  a DSL:
#It is a special language
#Provides abstaction
#Internals: Embedded in a host language and look like extensions
#Externals: Standalone languages independent of  any programming language
#Creating a simple Internal DSL in Ruby:

class TaskManager
  def initialize
    @tasks = {}
  end

  #Define a task with a name and a block
  def task(name, &block)
    @tasks[name] = block
  end

  #Run a task by name
  def run(task_name)
    if @tasks[task_name]
      @tasks[task_name].call
    else
      puts "Invalid! Task Not found!"
    end
  end
end

#anything can be added to the block, refer to this during projecs 
manager = TaskManager.new
manager.task :greet do puts "Hello!"end
manager.task :goodbye do puts "Goodbye!!!"end

manager.run(:greet)
manager.run(:goodbye)