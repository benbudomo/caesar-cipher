# Get input from user
puts "Please enter a string."
caesar_string = gets.chomp

puts "Please enter a number."
shift_factor = gets.chomp.to_i

# Shift each letter of the string based on the number input
def caesar_cipher(caesar_string, shift_factor) 
  alphabet = ("a".."z").to_a
  new_string = ""

  caesar_string.each_char do |input|
    if input == " "
        new_string += " "
    else 
      old_index = alphabet.find_index(input)
      new_index = (old_index + shift_factor) % alphabet.count
      new_string += alphabet[new_index]
    end
  end

puts new_string.chomp

end

caesar_cipher(caesar_string, shift_factor)