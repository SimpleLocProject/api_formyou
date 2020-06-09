class Api::ApplicationController < ApplicationController
    before_action :can_access?

    def can_access?
        unless current_user.can_access
            render json: {}, status: :forbidden
        end
    end

    def is_admin?
        unless current_user.is_admin
            render json: {}, status: :forbidden
        end
    end

    def is_teacher?
        unless current_user.is_teacher
            render json: {}, status: :forbidden
        end
    end

end