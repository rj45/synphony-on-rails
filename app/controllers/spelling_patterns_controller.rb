class SpellingPatternsController < ApplicationController
  # GET /spelling_patterns
  # GET /spelling_patterns.json
  def index
    @spelling_patterns = SpellingPattern.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spelling_patterns }
    end
  end

  # GET /spelling_patterns/1
  # GET /spelling_patterns/1.json
  def show
    @spelling_pattern = SpellingPattern.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spelling_pattern }
    end
  end

  # GET /spelling_patterns/new
  # GET /spelling_patterns/new.json
  def new
    @spelling_pattern = SpellingPattern.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spelling_pattern }
    end
  end

  # GET /spelling_patterns/1/edit
  def edit
    @spelling_pattern = SpellingPattern.find(params[:id])
  end

  # POST /spelling_patterns
  # POST /spelling_patterns.json
  def create
    @spelling_pattern = SpellingPattern.new(params[:spelling_pattern])

    respond_to do |format|
      if @spelling_pattern.save
        format.html { redirect_to @spelling_pattern, notice: 'Spelling pattern was successfully created.' }
        format.json { render json: @spelling_pattern, status: :created, location: @spelling_pattern }
      else
        format.html { render action: "new" }
        format.json { render json: @spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spelling_patterns/1
  # PUT /spelling_patterns/1.json
  def update
    @spelling_pattern = SpellingPattern.find(params[:id])

    respond_to do |format|
      if @spelling_pattern.update_attributes(params[:spelling_pattern])
        format.html { redirect_to @spelling_pattern, notice: 'Spelling pattern was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spelling_patterns/1
  # DELETE /spelling_patterns/1.json
  def destroy
    @spelling_pattern = SpellingPattern.find(params[:id])
    @spelling_pattern.destroy

    respond_to do |format|
      format.html { redirect_to spelling_patterns_url }
      format.json { head :no_content }
    end
  end
end
