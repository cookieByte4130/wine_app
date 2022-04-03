class ProfileController < ApplicationController
  def index
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(first_name: '...', last_name: '...', dob: '2022-04-01')

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

end
