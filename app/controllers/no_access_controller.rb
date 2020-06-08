class NoAccessController < ApplicationController
  skip_before_action :can_access?
    def index
      render json: 'Vous n\'avez pas accès à cette page'    
    end
end
  