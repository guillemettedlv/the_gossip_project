class StaticPagesController < ApplicationController
  def team
  end

  def contact
  end

  def home
    @gossip_array = Gossip.all
  end
end
