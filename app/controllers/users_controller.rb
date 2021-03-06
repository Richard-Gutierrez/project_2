class UsersController < ApplicationController

  def index
    #@user = User.new
  end

  def new

   @user = User.new

 end

  def create

    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @card = Card.new
    @payment = Payment.new
  end

  def pay

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])


    if @user.update_attributes(user_params)
      redirect_to user_path(@user.id)
    else
      render edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end


private

def user_params
  params.require(:user).permit(
    :name,
    :email,
    :password,
    :password_confirmation)
  end
end




