class UserLanguageProjectsController < ApplicationController
  # GET /user_language_projects
  # GET /user_language_projects.json
  def index
    @user_language_projects = UserLanguageProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_language_projects }
    end
  end

  # GET /user_language_projects/1
  # GET /user_language_projects/1.json
  def show
    @user_language_project = UserLanguageProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_language_project }
    end
  end

  # GET /user_language_projects/new
  # GET /user_language_projects/new.json
  def new
    @user_language_project = UserLanguageProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_language_project }
    end
  end

  # GET /user_language_projects/1/edit
  def edit
    @user_language_project = UserLanguageProject.find(params[:id])
  end

  # POST /user_language_projects
  # POST /user_language_projects.json
  def create
    @user_language_project = UserLanguageProject.new(params[:user_language_project])

    respond_to do |format|
      if @user_language_project.save
        format.html { redirect_to @user_language_project, notice: 'User language project was successfully created.' }
        format.json { render json: @user_language_project, status: :created, location: @user_language_project }
      else
        format.html { render action: "new" }
        format.json { render json: @user_language_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_language_projects/1
  # PUT /user_language_projects/1.json
  def update
    @user_language_project = UserLanguageProject.find(params[:id])

    respond_to do |format|
      if @user_language_project.update_attributes(params[:user_language_project])
        format.html { redirect_to @user_language_project, notice: 'User language project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_language_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_language_projects/1
  # DELETE /user_language_projects/1.json
  def destroy
    @user_language_project = UserLanguageProject.find(params[:id])
    @user_language_project.destroy

    respond_to do |format|
      format.html { redirect_to user_language_projects_url }
      format.json { head :no_content }
    end
  end
end
