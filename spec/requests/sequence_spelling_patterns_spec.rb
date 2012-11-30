require 'spec_helper'

describe "SequenceSpellingPatterns" do
  describe "GET /sequence_spelling_patterns" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sequence_spelling_patterns_path
      response.status.should be(200)
    end
  end
end
