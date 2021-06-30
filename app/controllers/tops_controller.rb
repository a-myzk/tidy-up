class TopsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if current_user
      redirect_to items_path(current_user.id)
    end
  end
end
