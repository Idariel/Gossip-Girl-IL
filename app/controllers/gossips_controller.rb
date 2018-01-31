class GossipsController < ApplicationController
  def home
  end
  def new
    @gossip = Gossip.new
  end
  def create
    # @gossip = Gossip.create(anonymous_author: anonymous_author, content: content)
    @gossip = Gossip.create(gossip_params)
  end
  def read
    # return a collection with all users
    @gossip = Gossip.all
  end
  def update
    @gossip = Gossip.find_by(anonymous_author: anonymous_author)
    @gossip.content = 'Dave'
    @gossip.save  end
  def delete
    @gossip = Gossip.find_by(anonymous_author: anonymous_author)
    @gossip.destroy
  end
end
