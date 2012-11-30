class UserSpellingPatternsController < ApplicationController
  # GET /user_spelling_patterns
  # GET /user_spelling_patterns.json
  def index
    @user_spelling_patterns = @language_project.user_spelling_patterns.where(user_id: current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_spelling_patterns }
    end
  end

  # GET /user_spelling_patterns/1
  # GET /user_spelling_patterns/1.json
  def show
    @user_spelling_pattern = @language_project.user_spelling_patterns.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_spelling_pattern }
    end
  end

  # GET /user_spelling_patterns/new
  # GET /user_spelling_patterns/new.json
  def new
    @user_spelling_pattern = @language_project.user_spelling_patterns.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_spelling_pattern }
    end
  end

  # GET /user_spelling_patterns/1/edit
  def edit
    @user_spelling_pattern = @language_project.user_spelling_patterns.find(params[:id])
  end

  # POST /user_spelling_patterns
  # POST /user_spelling_patterns.json
  def create
    @user_spelling_pattern = @language_project.user_spelling_patterns.build(params[:user_spelling_pattern])
    @user_spelling_pattern.user = current_user
    respond_to do |format|
      if @user_spelling_pattern.save
        format.html { redirect_to [@language_project, @user_spelling_pattern], notice: 'User spelling pattern was successfully created.' }
        format.json { render json: @user_spelling_pattern, status: :created, location: @user_spelling_pattern }
      else
        format.html { render action: "new" }
        format.json { render json: @user_spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_spelling_patterns/1
  # PUT /user_spelling_patterns/1.json
  def update
    @user_spelling_pattern = @language_project.user_spelling_patterns.find(params[:id])

    respond_to do |format|
      if @user_spelling_pattern.update_attributes(params[:user_spelling_pattern])
        format.html { redirect_to @user_spelling_pattern, notice: 'User spelling pattern was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_spelling_patterns/1
  # DELETE /user_spelling_patterns/1.json
  def destroy
    @user_spelling_pattern = @language_project.user_spelling_patterns.find(params[:id])
    @user_spelling_pattern.destroy

    respond_to do |format|
      format.html { redirect_to user_spelling_patterns_url }
      format.json { head :no_content }
    end
  end
end
