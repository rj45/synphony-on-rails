object @word

attributes :id, :name
node :spelling_patterns do |word|
  word.spelling_patterns.map(&:name)
end

