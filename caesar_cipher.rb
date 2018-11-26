def caesar_cipher(text, shift)
  coded = Array.new
  downcased_letter = ('a'..'z').to_a
	upcased_letter = ('A'..'Z').to_a

	text.split('').each do |character|
		if  downcased_letter.include?(character)
			coded <<  downcased_letter[( downcased_letter.index(character) + shift ) % 26]
		elsif upcased_letter.include?(character)
			coded << upcased_letter[( upcased_letter.index(character) + shift ) % 26]
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
