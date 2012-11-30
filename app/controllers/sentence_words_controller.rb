class SentenceWordsController < ApplicationController
  # GET /sentence_words
  # GET /sentence_words.json
  def index
    @sentence_words = SentenceWord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sentence_words }
    end
  end

  # GET /sentence_words/1
  # GET /sentence_words/1.json
  def show
    @sentence_word = SentenceWord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sentence_word }
    end
  end

  # GET /sentence_words/new
  # GET /sentence_words/new.json
  def new
    @sentence_word = SentenceWord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sentence_word }
    end
  end

  # GET /sentence_words/1/edit
  def edit
    @sentence_word = SentenceWord.find(params[:id])
  end

  # POST /sentence_words
  # POST /sentence_words.json
  def create
    @sentence_word = SentenceWord.new(params[:sentence_word])

    respond_to do |format|
      if @sentence_word.save
        format.html { redirect_to @sentence_word, notice: 'Sentence word was successfully created.' }
        format.json { render json: @sentence_word, status: :created, location: @sentence_word }
      else
        format.html { render action: "new" }
        format.json { render json: @sentence_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sentence_words/1
  # PUT /sentence_words/1.json
  def update
    @sentence_word = SentenceWord.find(params[:id])

    respond_to do |format|
      if @sentence_word.update_attributes(params[:sentence_word])
        format.html { redirect_to @sentence_word, notice: 'Sentence word was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sentence_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentence_words/1
  # DELETE /sentence_words/1.json
  def destroy
    @sentence_word = SentenceWord.find(params[:id])
    @sentence_word.destroy

    respond_to do |format|
      format.html { redirect_to sentence_words_url }
      format.json { head :no_content }
    end
  end
end
