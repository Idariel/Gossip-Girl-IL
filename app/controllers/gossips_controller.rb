class GossipsController < ApplicationController
  def home
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    # saving data in the controller
    @gossip = Gossip.create(gossip_params)
    @gossip.save
    redirect_to @gossip

    # @gossip = gossip.new(gossip_params)
    # if @gossip.save
    #   redirect_to @gossip
    # else
    #   render 'new'
    # end
  end

  def show
    # return one user
    @gossip = Gossip.find(params[:id])
  end

  def edit # idem new
    @gossip = Gossip.find(params[:id])
  end

  def update # pratiquement identique à create
    # @gossip = Gossip.update(gossip_params)
    # @gossip.save
    # redirect_to @edit

    @gossip = Gossip.find(params[:id])
    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render 'edit'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end


  # allow and require the title and text parameters for valid use of create
  # Utilisé dans create et update
  private
  def gossip_params
    params.require(:gossip).permit(:anonymous_author, :content)
  end

end
