def caesar_cipher(text, shift)
  coded = Array.new
  downcase_letter = ('a'..'z').to_a
  upcase_letter = ('A'..'Z').to_a

  text.split('').each do |character|
    if downcase_letter.include?(character)
      coded << downcase_letter[( downcase_letter.index(character) + shift ) % 26]
    elsif upcase_letter.include?(character)
      coded << upcase_letter[( upcase_letter.index(character) + shift ) % 26]
    else
      coded << character
    end
  end

  coded.join
end

puts 'Write the word to encript'
text = gets.chomp
puts 'How many places should be changed'
shift = gets.chomp.to_i
puts caesar_cipher(text, shift)
