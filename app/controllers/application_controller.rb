class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate
  before_filter :lookup_language_project

  private

  def authenticate
    if controller_name != 'landing_page'
      authenticate_user!
    end
  end

  def lookup_language_project
    if params[:language_project_id]
      @language_project = LanguageProject.find_by_slug(params[:language_project_id])
    elsif params[:project_id]
      @language_project = LanguageProject.find_by_slug(params[:project_id])
    end
  end
end
