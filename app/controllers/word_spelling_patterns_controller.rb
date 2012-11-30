class WordSpellingPatternsController < ApplicationController
  # GET /word_spelling_patterns
  # GET /word_spelling_patterns.json
  def index
    @word_spelling_patterns = WordSpellingPattern.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @word_spelling_patterns }
    end
  end

  # GET /word_spelling_patterns/1
  # GET /word_spelling_patterns/1.json
  def show
    @word_spelling_pattern = WordSpellingPattern.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @word_spelling_pattern }
    end
  end

  # GET /word_spelling_patterns/new
  # GET /word_spelling_patterns/new.json
  def new
    @word_spelling_pattern = WordSpellingPattern.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @word_spelling_pattern }
    end
  end

  # GET /word_spelling_patterns/1/edit
  def edit
    @word_spelling_pattern = WordSpellingPattern.find(params[:id])
  end

  # POST /word_spelling_patterns
  # POST /word_spelling_patterns.json
  def create
    @word_spelling_pattern = WordSpellingPattern.new(params[:word_spelling_pattern])

    respond_to do |format|
      if @word_spelling_pattern.save
        format.html { redirect_to @word_spelling_pattern, notice: 'Word spelling pattern was successfully created.' }
        format.json { render json: @word_spelling_pattern, status: :created, location: @word_spelling_pattern }
      else
        format.html { render action: "new" }
        format.json { render json: @word_spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /word_spelling_patterns/1
  # PUT /word_spelling_patterns/1.json
  def update
    @word_spelling_pattern = WordSpellingPattern.find(params[:id])

    respond_to do |format|
      if @word_spelling_pattern.update_attributes(params[:word_spelling_pattern])
        format.html { redirect_to @word_spelling_pattern, notice: 'Word spelling pattern was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @word_spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_spelling_patterns/1
  # DELETE /word_spelling_patterns/1.json
  def destroy
    @word_spelling_pattern = WordSpellingPattern.find(params[:id])
    @word_spelling_pattern.destroy

    respond_to do |format|
      format.html { redirect_to word_spelling_patterns_url }
      format.json { head :no_content }
    end
  end
end
