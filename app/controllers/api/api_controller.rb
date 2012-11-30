module Api
  class ApiController < ActionController::Base
    before_filter :authenticate

    before_filter :lookup_language_project

    private

    def authenticate
      return if controller_name == "logins"
      auth_token = params[:auth_token] || request.headers["x-auth-token"]
      if auth_token
        api_key = ApiKey.find_by_auth_token(auth_token)
        if api_key
          @user = api_key.user
          return
        end
      end
      warden.custom_failure!
      render json: {
        error: {
          code: "ACCESS_DENIED", message: "Please authenticate for access."
        }}, status: 401
    end

    def lookup_language_project
      if params[:language_project_id]
        @language_project = LanguageProject.find_by_slug(params[:language_project_id])
      elsif params[:project_id]
        @language_project = LanguageProject.find_by_slug(params[:project_id])
      end
    end
  end
end