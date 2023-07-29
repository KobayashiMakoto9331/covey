class DateTasksController < ApplicationController

  def index
    @date_tasks = DateTask.all
  end
end
