class SessionsController < ApplicationController
  def new
    # Code pour afficher le formulaire de connexion
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Bienvenue, vous êtes connecté !'
    else
      flash.now[:alert] = 'Email ou mot de passe incorrect'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)  # Déconnexion de l'utilisateur
    redirect_to root_path, notice: "Vous êtes maintenant déconnecté."
  end
end
