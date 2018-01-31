class GossipsController < ApplicationController
  def home
  end

  def new
    @gossip = Gossip.new
  end

  def create
    # saving data in the controller
    @gossip = Gossip.create(gossip_params)
    @gossip.save
    redirect_to @gossip

    # allow and require the title and text parameters for valid use of create
    private
    def gossip_params
      params.require(:gossip).permit(:anonymous_author, :content)
    end

  end


  def show
    # return a collection with all users
    @gossip = Gossip.find(params[:content])
  end


  def update
    @gossip = Gossip.find_by(anonymous_author: anonymous_author)
    @gossip.content = 'Dave'
    @gossip.save
  end

  
  def delete
    @gossip = Gossip.find_by(anonymous_author: anonymous_author)
    @gossip.destroy
  end
end
