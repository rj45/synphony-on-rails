class SequenceSpellingPatternsController < ApplicationController
  # GET /sequence_spelling_patterns
  # GET /sequence_spelling_patterns.json
  def index
    @sequence_spelling_patterns = SequenceSpellingPattern.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sequence_spelling_patterns }
    end
  end

  # GET /sequence_spelling_patterns/1
  # GET /sequence_spelling_patterns/1.json
  def show
    @sequence_spelling_pattern = SequenceSpellingPattern.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sequence_spelling_pattern }
    end
  end

  # GET /sequence_spelling_patterns/new
  # GET /sequence_spelling_patterns/new.json
  def new
    @sequence_spelling_pattern = SequenceSpellingPattern.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sequence_spelling_pattern }
    end
  end

  # GET /sequence_spelling_patterns/1/edit
  def edit
    @sequence_spelling_pattern = SequenceSpellingPattern.find(params[:id])
  end

  # POST /sequence_spelling_patterns
  # POST /sequence_spelling_patterns.json
  def create
    @sequence_spelling_pattern = SequenceSpellingPattern.new(params[:sequence_spelling_pattern])

    respond_to do |format|
      if @sequence_spelling_pattern.save
        format.html { redirect_to @sequence_spelling_pattern, notice: 'Sequence spelling pattern was successfully created.' }
        format.json { render json: @sequence_spelling_pattern, status: :created, location: @sequence_spelling_pattern }
      else
        format.html { render action: "new" }
        format.json { render json: @sequence_spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sequence_spelling_patterns/1
  # PUT /sequence_spelling_patterns/1.json
  def update
    @sequence_spelling_pattern = SequenceSpellingPattern.find(params[:id])

    respond_to do |format|
      if @sequence_spelling_pattern.update_attributes(params[:sequence_spelling_pattern])
        format.html { redirect_to @sequence_spelling_pattern, notice: 'Sequence spelling pattern was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sequence_spelling_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sequence_spelling_patterns/1
  # DELETE /sequence_spelling_patterns/1.json
  def destroy
    @sequence_spelling_pattern = SequenceSpellingPattern.find(params[:id])
    @sequence_spelling_pattern.destroy

    respond_to do |format|
      format.html { redirect_to sequence_spelling_patterns_url }
      format.json { head :no_content }
    end
  end
end
