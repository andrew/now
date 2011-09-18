class TasksController < InheritedResources::Base
  def create
    super do |format|
      format.html { redirect_to root_url(:anchor => @task.context) }
    end
  end

  def update
    super do |format|
      format.html { redirect_to root_url(:anchor => @task.context) }
    end
  end

  def destroy
    super do |format|
      format.html { redirect_to root_url(:anchor => @task.context) }
    end
  end
end