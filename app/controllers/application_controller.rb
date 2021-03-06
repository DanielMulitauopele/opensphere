class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_voter

  def current_voter
    @current_voter ||= Voter.find(session[:voter_id]) if session[:voter_id]
  end

  def current_admin?
    current_voter && current_voter.admin?
  end
end
