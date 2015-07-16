class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(nombre: params[:session][:nombre].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
			#sign the user in and redirect to the user's show page.
		else
			#Create an error message an re-render the signi form.
			flash.now[:error] = 'Invalid user/password combination'
			
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
