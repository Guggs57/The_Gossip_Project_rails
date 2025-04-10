class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def show
    # Ici tu as déjà un @gossip chargé grâce à set_gossip
  end

  def new
    @gossip = Gossip.new  # Créer une nouvelle instance de Gossip pour le formulaire
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.user = current_user  # Assigner l'utilisateur actuellement connecté au potin

    if @gossip.save
      redirect_to root_path, notice: 'Potin créé avec succès!'  # Rediriger vers la page d'accueil après la création
    else
      render :new  # Re-render le formulaire si l'enregistrement échoue
    end
  end

  def edit
    # Cette méthode est déjà correcte
  end

  def update
    if @gossip.update(gossip_params)
      redirect_to @gossip, notice: 'Potin mis à jour avec succès!'
    else
      render :edit
    end
  end

  def destroy
    @gossip.destroy
    redirect_to root_path, notice: 'Potin supprimé avec succès.'
  end

  private

  def set_gossip
    @gossip = Gossip.find(params[:id])
  end

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end

  def authorize_user!
    redirect_to root_path, alert: "Vous n'avez pas les droits nécessaires pour effectuer cette action." unless @gossip.user == current_user
  end
end
