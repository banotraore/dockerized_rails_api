class WelcomeController < ApplicationController
  def index
    render json: { message: 'Welcome to the index' }, status: :ok
  end
end
