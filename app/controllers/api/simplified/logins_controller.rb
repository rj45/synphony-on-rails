module Api
  module Simplified
    class LoginsController < ApiController
      respond_to :json

      # def index
      #   @words = @language_project.words
      #   respond_with(@words)
      # end

      # def show
      #   @word = @language_project.words.find(params[:id])
      #   respond_with @word
      # end

      def create
        key = ApiKey.create_key(params[:login])
        if key
          respond_with({
            login: {
              auth_token: key.auth_token
            }}, location: api_simplified_login_path)
        else
          respond_with({
            error: {
              code: "BAD_AUTH",
              message: "Unknown username or password"
            }}, location: api_simplified_login_path, status: :unprocessable_entity)
        end
      end

      # def update
      #   respond_with @language_project.words.update(params[:id], params[:word])
      # end

      # def destroy
      #   respond_with @language_project.words.destroy(params[:id])
      # end
    end
  end
end