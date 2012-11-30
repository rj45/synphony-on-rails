module Api
  module Simplified
    class WordsController < ApiController
      respond_to :json

      def index
        if params[:lesson]
          @words = @language_project.words.with_user_spelling_patterns(
              @user.user_spelling_patterns)
        else
          @words = @language_project.words
        end
        respond_with(@words)
      end

      def show
        @word = @language_project.words.find(params[:id])
        respond_with @word
      end

      # def create
      #   respond_with @language_project.words.create(params[:word])
      # end

      # def update
      #   respond_with @language_project.words.update(params[:id], params[:word])
      # end

      # def destroy
      #   respond_with @language_project.words.destroy(params[:id])
      # end
    end
  end
end