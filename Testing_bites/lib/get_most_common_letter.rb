def get_most_common_letter(text)
 counter = Hash.new(0)
 text.delete(" ").chars.each do |char| #remove whitespace
 counter[char] += 1
end
 counter.to_a.sort_by { |_k, v| -v }[0][0] 
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")
p "o"

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"