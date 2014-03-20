class HomeController < ApplicationController
	
  def index
  end

  def me
    @me = Me.first || Me.create
  end

  def contact
  	@message  = Message.new
  end

  def save_message
  	@message = Message.new(params[:message].permit(:email, :phone, :content))
  	if @message.save
  		redirect_to root_path
  	end
  end
  
end
