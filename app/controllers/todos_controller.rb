class TodosController < ApplicationController
    before_action :set_todo, only: :update
    before_action :set_or_create_list, only: :create
  
    def create
      @new_todo = @list.todos.build(todo_params)
  
      if @new_todo.save
        render json: @new_todo, status: :created, location: todos_path(@new_todo)
      else
        render json: @new_todo.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @todo.toggle!(:isCompleted)
        render json: @todo
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def set_todo
      @todo = Todo.find(params[:id])
    end
  
    def set_or_create_list
      @list =
        if list_params[:title]
          List.find_or_create_by(title: list_params[:title])
        else
          List.find(list_params[:id])
        end
    end
  
    def todo_params
      params.fetch(:todo, {}).permit(:text)
    end
  
    def list_params
      params.fetch(:list, {}).permit(:title, :id)
    end
  end
  