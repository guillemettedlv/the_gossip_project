class WelcomeController < ApplicationController
  attr_accessor :first_name

  def show
    @user = User.create(first_name: params[:first_name])
    @gossip_array = Gossip.all
  end

end
