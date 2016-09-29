class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
    respond_to do |format|
      format.json { render json: {some: 'data'} }
    end
  end
end
