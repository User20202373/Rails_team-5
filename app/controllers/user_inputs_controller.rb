class UserInputsController < ApplicationController
  def new
    @user_input = UserInput.new
  end

  def create
    @user_input = UserInput.new(user_input_params)
    if @user_input.save
      redirect_to body_path(gender: @user_input.gender)
    else
      render :new
    end
  end

  private

  def user_input_params
    params.require(:user_input).permit(:gender, :age)
  end
end

