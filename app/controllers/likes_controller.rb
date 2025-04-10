class LikesController < ApplicationController
    def create
        @gossip = Gossip.find(params[:gossip_id])
        @like = Like.new(gossip: @gossip, user: current_user)
      
        if @like.save
          redirect_to gossip_path(@gossip), notice: "Gossip liké ! ❤️"
        else
          redirect_to gossip_path(@gossip), alert: "Impossible de liker 😢"
        end
      end 

      

    def destroy
        @gossip = Gossip.find(params[:gossip_id])
        @like = Like.find_by(gossip: @gossip, user: current_user)

        if @like
            @like.destroy
            redirect_to gossip_path(@gossip), notice: "tu n'aimes donc pas ? "
          else
            redirect_to gossip_path(@gossip), alert: "Impossible de déliker 😢"
          end
        end 
    end


