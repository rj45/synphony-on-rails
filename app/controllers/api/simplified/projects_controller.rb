module Api
  module Simplified
    class ProjectsController < ApiController
      respond_to :json

      def index
        @projects = LanguageProject.all
        respond_with(@projects)
      end

      def show
        @project = LanguageProject.find_by_slug(params[:id])
        respond_with @project
      end

      # def create
      #   respond_with LanguageProject.create(params[:project])
      # end

      # def update
      #   respond_with LanguageProject.update(params[:id], params[:project])
      # end

      # def destroy
      #   respond_with LanguageProject.destroy(params[:id])
      # end
    end
  end
end