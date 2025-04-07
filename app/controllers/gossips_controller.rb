class GossipsController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.user = User.first # Assigner un utilisateur par défaut (ou autre logique)

    if @gossip.save
      redirect_to root_path, notice: 'Potin créé avec succès!'
    else
      render :new
    end
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end
end

