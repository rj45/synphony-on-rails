collection @words, :root => :words, :object_root => false

attributes :id, :name
node :spelling_patterns do |word|
  word.spelling_patterns.map(&:name)
end

