class Api::ApplicationController < ApplicationController
    before_action :can_access?

    def can_access?
        if !current_user.can_access
          redirect_to no_access_path, flash: {error: "Votre compte n'est pas encore validé par les administrateurs"}
        end
      end

    def is_admin?
        if !current_user.is_admin
            redirect_to no_access_path, flash: {error: "Vous n'avez pas les droits suffisants !"}
        end
    end

    def is_teacher?
        if !current_user.is_teacher
            redirect_to no_access_path, flash: {error: "Vous n'avez pas les droits suffisants !"}
        end
    end

end