# a function that takes a string and a number to shift. 
# separate the string into characters
# convert the characters to their ascii code
# apply the shift
# check that the shift doesn't go past z -> if so, subtract 26 from the number. (blank spaces?)
# convert numbers back to ascii characters
# convert the array back to string. 
# return the string
# 
# additional: ask for user input for string and shift number. 

def upcase_ascii_transform(char, number)
  ascii = char.ord + number
  ascii > 89 ? (ascii - 26).chr : ascii.chr
end

def downcase_ascii_transform(char, number)
  ascii = char.ord + number
  return ascii > 121 ? (ascii - 26).chr : ascii.chr
end

# broke this part of the function, does not return anything at the moment
# if I take away the return it doens't return non-letter characters unmodified.
def ceasar_cipher(string, number) 
  arr = string.split('')
  result = arr.map do |char| 
  return char if !char.match(/[a-zA-Z]/)
  char.upcase == char ? upcase_ascii_transform(char, number) : downcase_ascii_transform(char, number)
  end
  result.join
end

puts "Chose a word or sentence to encode:"
user_string = gets.chomp
puts "Chose an offset:"
user_offset = gets.chomp.to_i

puts "Your encoded word or sentence"
puts ceasar_cipher(user_string, user_offset)
