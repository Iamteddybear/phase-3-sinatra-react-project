class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  get "/todos" do
    todos = Todo.all
    todos.to_json
  end

  get "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.to_json
  end

  post "/todos" do
    todo = Todo.create(params[:todo])
    todo.to_json
  end

  patch "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.update(params[:todo])
    todo.to_json
  end

  delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end
end
