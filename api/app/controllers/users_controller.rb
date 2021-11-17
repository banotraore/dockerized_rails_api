class UsersController < ApplicationController
  def index
    users = User.all
    render json: {
      users: ActiveModelSerializers::SerializableResource.new(users, each_serializer: UserSerializer),
      message: 'Users list fetched successfully',
      status: :ok,
      type: 'Success'
    }
  end
end
