class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
  	@usuarios = User.all
  end

  def show  	
  	render action: "detalle"
  end

  def detalle
  	@usuario = User.find(paramas[:id])
  end

  def destroy
  	@usuario.destroy
  	redirect_to users_url
  end
  
  def edit
  	
  end

  def update  	
  	if @usuario.update_attributes(user_params)
  		redirect_to users_url
  	else
  		render action: 'edit'
  	end
  end

  def new
  	@usuario = User.new
  end

  def create
  	@usuario = User.new(user_params)
  	if @usuario.save
      sign_in @usuario
  		flash[:success] = "Bienvenido"
      redirect_to @usuario
  		#redirect_to users_url
  	else
  		render 'new'
  	end  	
  end

  private

  def set_user
  	@usuario = User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit(:nombre, :email, :password, :password_confirmation)
  end



end
