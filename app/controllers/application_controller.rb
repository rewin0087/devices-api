class ApplicationController < ActionController::API
  include AbstractController::Translation
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  protected

  def not_found
    render json: { error: "Record with ID #{params[:id]} not found." }
  end
end
