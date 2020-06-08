class Api::ApplicationController < ApplicationController
    before_action :can_access?

    def can_access?
        unless current_user.can_access
            # redirect_to no_access_path, flash: {error: "Votre compte n'est pas encore validé par les administrateurs"}
            # head 403
            render json: {}, status: :forbidden
        end
    end

    def is_admin?
        unless current_user.is_admin
            # redirect_to no_access_path, flash: {error: "Vous n'avez pas les droits suffisants !"}
            render json: {}, status: :forbidden
        end
    end

    def is_teacher?
        unless current_user.is_teacher
            # redirect_to no_access_path, flash: {error: "Vous n'avez pas les droits suffisants !"}
            render json: {}, status: :forbidden
        end
    end

end