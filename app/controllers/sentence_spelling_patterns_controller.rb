class SentenceSpellingPatternsController < ApplicationController
  # GET /sentence_spelling_patterns
  # GET /sentence_spelling_patterns.json
  def index
    @sentence_spelling_patterns = SentenceSpellingPattern.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sentence_spelling_patterns }
    end
  end

  # GET /sentence_spelling_patterns/1
  # GET /sentence_spelling_patterns/1.json
  def show
    @sentence_spelling_pattern = SentenceSpellingPattern.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sentence_spelling_pattern }
    end
  end

  # GET /sentence_spelling_patterns/new
  # GET /sentence_spelling_patterns/new.json
  def new
    @sentence_spelling_pattern = SentenceSpellingPattern.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sentence_spelling_pattern }
    end
  end

  # GET /sentence_spelling_patterns/1/edit
  def edit
    @sentence_spelling_pattern = SentenceSpellingPattern.find(params[:id])
  end

  # POST /sentence_spelling_patterns
  # POST /sentence_spelling_patterns.json
  def create
    @sentence_spelling_pattern = SentenceSpellingPattern.new(params[:sentence_spelling_pattern])

    respond_to do |format|
      if @sentence_spelling_pattern.save
        format.html { redirect_to @sentence_spelling_pattern, notice: 'Sentence spelling pattern was successfully created.' }
        format.json { render json: @sentence_spelling_pattern, status: :created, location: @sentence_spelling_pattern }
      else
        format.html { render action: "new" }
        format.json { render json: @sentence_spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sentence_spelling_patterns/1
  # PUT /sentence_spelling_patterns/1.json
  def update
    @sentence_spelling_pattern = SentenceSpellingPattern.find(params[:id])

    respond_to do |format|
      if @sentence_spelling_pattern.update_attributes(params[:sentence_spelling_pattern])
        format.html { redirect_to @sentence_spelling_pattern, notice: 'Sentence spelling pattern was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sentence_spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentence_spelling_patterns/1
  # DELETE /sentence_spelling_patterns/1.json
  def destroy
    @sentence_spelling_pattern = SentenceSpellingPattern.find(params[:id])
    @sentence_spelling_pattern.destroy

    respond_to do |format|
      format.html { redirect_to sentence_spelling_patterns_url }
      format.json { head :no_content }
    end
  end
end
