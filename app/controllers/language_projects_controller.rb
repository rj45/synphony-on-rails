class LanguageProjectsController < ApplicationController
  # GET /language_projects
  # GET /language_projects.json
  def index
    @language_projects = LanguageProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @language_projects }
    end
  end

  # GET /language_projects/1
  # GET /language_projects/1.json
  def show
    @language_project = LanguageProject.find_by_slug(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @language_project }
    end
  end

  # GET /language_projects/new
  # GET /language_projects/new.json
  def new
    @language_project = LanguageProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @language_project }
    end
  end

  # GET /language_projects/1/edit
  def edit
    @language_project = LanguageProject.find(params[:id])
  end

  # POST /language_projects
  # POST /language_projects.json
  def create
    @language_project = LanguageProject.new(params[:language_project])

    respond_to do |format|
      if @language_project.save
        format.html { redirect_to @language_project, notice: 'Language project was successfully created.' }
        format.json { render json: @language_project, status: :created, location: @language_project }
      else
        format.html { render action: "new" }
        format.json { render json: @language_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /language_projects/1
  # PUT /language_projects/1.json
  def update
    @language_project = LanguageProject.find(params[:id])

    respond_to do |format|
      if @language_project.update_attributes(params[:language_project])
        format.html { redirect_to @language_project, notice: 'Language project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @language_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_projects/1
  # DELETE /language_projects/1.json
  def destroy
    @language_project = LanguageProject.find(params[:id])
    @language_project.destroy

    respond_to do |format|
      format.html { redirect_to language_projects_url }
      format.json { head :no_content }
    end
  end
end
